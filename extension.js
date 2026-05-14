const path = require("path");
const fs = require("fs");
const vscode = require("vscode");

const EXTENSION_NAME = "cso-studio-lua-api";
const LIBRARY_FOLDER = "library";
const DOC_FILE = "__Doc.lua";
const DOC_TABLE_SNIPPETS = [
  {
    label: "__DocWeapon",
    tableName: "WeaponId",
    detail: "__Doc.WeaponId",
    description: "Insert the __Doc.WeaponId reference table.",
  },
  {
    label: "__DocMonster",
    tableName: "MonsterId",
    detail: "__Doc.MonsterId",
    description: "Insert the __Doc.MonsterId reference table.",
  },
  {
    label: "__DocRenderFX",
    tableName: "RENDERFX",
    detail: "__Doc.RENDERFX",
    description: "Insert the __Doc.RENDERFX reference table.",
  },
];
const DEFINITIONS_ENABLED_KEY = "definitionsEnabled";

async function isDefinitionsEnabled(context) {
  return context.globalState.get(DEFINITIONS_ENABLED_KEY, true);
}

async function setDefinitionsEnabled(context, enabled) {
  await context.globalState.update(DEFINITIONS_ENABLED_KEY, enabled);
}

function normalize(value) {
  return path.normalize(value);
}

function isCurrentLibraryPath(entry, libraryPath) {
  return normalize(entry) === normalize(libraryPath);
}

function isOldExtensionLibraryPath(entry, extensionPath) {
  const normalizedEntry = normalize(entry);
  const normalizedExtensionPath = normalize(extensionPath);

  if (normalizedEntry.startsWith(normalizedExtensionPath)) {
    return false;
  }

  return normalizedEntry.includes(`${EXTENSION_NAME}-`) &&
    normalizedEntry.endsWith(`${path.sep}${LIBRARY_FOLDER}`);
}

function extractDocTable(source, tableName) {
  const assignment = `__Doc.${tableName} =`;
  const assignmentIndex = source.indexOf(assignment);

  if (assignmentIndex === -1) {
    return undefined;
  }

  const tableStart = source.indexOf("{", assignmentIndex);

  if (tableStart === -1) {
    return undefined;
  }

  let depth = 0;

  for (let index = tableStart; index < source.length; index += 1) {
    const char = source[index];

    if (char === "{") {
      depth += 1;
    }

    if (char === "}") {
      depth -= 1;

      if (depth === 0) {
        return source.slice(assignmentIndex, index + 1);
      }
    }
  }

  return undefined;
}

function escapeSnippetText(text) {
  return text
    .replace(/\\/g, "\\\\")
    .replace(/\$/g, "\\$")
    .replace(/\}/g, "\\}");
}

function createDocTableCompletionItems(context) {
  const docPath = path.join(context.extensionPath, LIBRARY_FOLDER, DOC_FILE);
  let source;

  try {
    source = fs.readFileSync(docPath, "utf8");
  } catch {
    return [];
  }

  return DOC_TABLE_SNIPPETS.flatMap((snippet) => {
    const table = extractDocTable(source, snippet.tableName);

    if (!table) {
      return [];
    }

    const item = new vscode.CompletionItem(snippet.label, vscode.CompletionItemKind.Snippet);
    item.detail = snippet.detail;
    item.documentation = new vscode.MarkdownString(snippet.description);
    item.insertText = new vscode.SnippetString(escapeSnippetText(table));
    item.filterText = snippet.label;
    item.sortText = `0_${snippet.label}`;

    return [item];
  });
}

function registerDocTableSnippets(context) {
  const items = createDocTableCompletionItems(context);
  const wordRangePattern = /[_A-Za-z][_A-Za-z0-9]*/;

  return vscode.languages.registerCompletionItemProvider("lua", {
    provideCompletionItems(document, position) {
      const range = document.getWordRangeAtPosition(position, wordRangePattern);

      return items.map((item) => {
        const completion = new vscode.CompletionItem(item.label, item.kind);
        completion.detail = item.detail;
        completion.documentation = item.documentation;
        completion.insertText = item.insertText;
        completion.filterText = item.filterText;
        completion.sortText = item.sortText;
        completion.range = range;

        return completion;
      });
    },
  });
}

async function updateLuaLibrary(context, enable) {
  const libraryPath = path.join(context.extensionPath, LIBRARY_FOLDER);
  const config = vscode.workspace.getConfiguration("Lua");
  const current = config.get("workspace.library");
  const library = Array.isArray(current)
    ? current.filter((entry) => typeof entry === "string")
    : [];

  const next = library.filter((entry) => !isOldExtensionLibraryPath(entry, context.extensionPath));
  const hasLibrary = next.some((entry) => isCurrentLibraryPath(entry, libraryPath));

  if (enable && !hasLibrary) {
    next.push(libraryPath);
  }

  if (!enable && hasLibrary) {
    const index = next.findIndex((entry) => isCurrentLibraryPath(entry, libraryPath));
    next.splice(index, 1);
  }

  if (JSON.stringify(library) !== JSON.stringify(next)) {
    await config.update("workspace.library", next, vscode.ConfigurationTarget.Global);
  }
}

async function activate(context) {
  const enabled = await isDefinitionsEnabled(context);

  await updateLuaLibrary(context, enabled);

  context.subscriptions.push(
    registerDocTableSnippets(context),

    vscode.commands.registerCommand("csoStudioLuaApi.enableDefinitions", async () => {
      await setDefinitionsEnabled(context, true);
      await updateLuaLibrary(context, true);
      vscode.window.showInformationMessage("CSO Studio Lua API definitions enabled.");
    }),

    vscode.commands.registerCommand("csoStudioLuaApi.disableDefinitions", async () => {
      await setDefinitionsEnabled(context, false);
      await updateLuaLibrary(context, false);
      vscode.window.showInformationMessage("CSO Studio Lua API definitions disabled.");
    })
  );
}

function deactivate() {}

module.exports = {
  activate,
  deactivate,
};
