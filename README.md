# CSO Studio Lua API

Counter-Strike Online Studio Lua API를 위한 비공식 LuaLS 정의 파일입니다.

Provides unofficial LuaLS definitions for the CSO Studio Lua API.
Documentation comments are written mainly in Korean.

## 동작 방식

이 확장은 설치된 확장 내부의 `library` 폴더를 LuaLS 설정인
`Lua.workspace.library`에 자동 등록합니다. 이를 통해 LuaLS가
`Game`, `UI`, `Common` API 정의 파일을 읽고 자동완성/호버 정보를 제공합니다.

명령 팔레트에서 다음 명령으로 켜고 끌 수 있습니다.

- `CSO Studio Lua API: Enable Definitions`
- `CSO Studio Lua API: Disable Definitions`

## `__Doc` 참고표

`library/__Doc.lua`의 `__Doc` 테이블은 설명용 참고표입니다.
실제 스크립트에서는 `__Doc` 값을 직접 사용하지 말고, 표에서 확인한 정수를 API 인수에 넣어 사용하세요.

```lua
-- 잘못된 사용
Game.Monster:Create(__Doc.MonsterId.NormalZombie1, { x = 1, y = 1, z = 1 })

-- 올바른 사용
Game.Monster:Create(200, { x = 1, y = 1, z = 1 })
```

VS Code 자동완성에서 다음 prefix를 입력하면 각 참고표를 삽입할 수 있습니다.

- `__DocWeapon`: `__Doc.WeaponId`
- `__DocMonster`: `__Doc.MonsterId`
- `__DocRenderFX`: `__Doc.RENDERFX`

## How it works

This extension registers its bundled `library` folder in the LuaLS setting
`Lua.workspace.library` so LuaLS can provide completions and hover information
for the CSO Studio Lua API.

You can disable this behavior from the command palette:

- `CSO Studio Lua API: Disable Definitions`
- `CSO Studio Lua API: Enable Definitions`

## `__Doc` Reference Tables

The `__Doc` tables in `library/__Doc.lua` are reference-only documentation.
Do not use `__Doc` values directly in scripts. Look up the integer value and pass that integer to the API instead.

The extension also provides completion snippets for these tables:

- `__DocWeapon`: `__Doc.WeaponId`
- `__DocMonster`: `__Doc.MonsterId`
- `__DocRenderFX`: `__Doc.RENDERFX`
