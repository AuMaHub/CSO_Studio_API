---@meta
---@diagnostic disable: missing-return, unused-local

-- =========================================================
-- CSO Studio API
-- Game module
-- https://cso.dn.nexoncdn.co.kr/vxlman/api/modules/Game.html
-- =========================================================

---@class Game
Game = Game or {}

---팀
---@enum Game.TEAM
Game.TEAM = {
    UNASSIGNED = 0, -- 준비중
    TR = 1,         -- 테러리스트
    CT = 2,         -- 대테러리스트
    SPECTATOR = 3,  -- 관전자
}

---플레이어 모델
---@enum Game.MODEL
Game.MODEL = {
    DEFAULT = 0,                  -- 입장 시 선택한 클래스
    SEAL = 1,                     -- 씰 팀 6
    GSG9 = 2,                     -- GSG9
    GIGN = 3,                     -- GIGN
    SAS = 4,                      -- SAS
    SPETSNAZ = 5,                 -- 스페츠나츠
    GUERILLA = 6,                 -- 게릴라군
    PHOENIX = 7,                  -- 피닉스 커넥션
    ELITE = 8,                    -- 엘리트 요원
    ARCTIC = 9,                   -- 아틱 어벤저
    MILITIA = 10,                 -- 민병대
    HERO = 11,                    -- 남자 영웅
    HEROINE = 12,                 -- 여자 영웅
    NORMAL_ZOMBIE = 13,           -- 일반 좀비
    LIGHT_ZOMBIE = 14,            -- 라이트 좀비
    HEAVY_ZOMBIE = 15,            -- 헤비 좀비
    PHYCHO_ZOMBIE = 16,           -- 사이코 좀비
    VOODOO_ZOMBIE = 17,           -- 부두 좀비
    DEIMOS_ZOMBIE = 18,           -- 데이모스
    GANYMEDE_ZOMBIE = 19,         -- 가니메데
    STAMPER_ZOMBIE = 20,          -- 스탬퍼
    BANSHEE_ZOMBIE = 21,          -- 밴시
    VENOMGUARD_ZOMBIE = 22,       -- 베놈가드
    STINGFINGER_ZOMBIE = 23,      -- 스팅핑거
    METATRON_ZOMBIE = 24,         -- 메타트론
    LILITH_ZOMBIE = 25,           -- 릴리스
    CHASER_ZOMBIE = 26,           -- 체이서
    BLOTTER_ZOMBIE = 27,          -- 블로터
    RUSTYWING_ZOMBIE = 28,        -- 러스티 윙
    AKSHA_ZOMBIE = 29,            -- 아크샤
    SOLDIER_ZOMBIE = 30,          -- 솔져
    NORMAL_ZOMBIE_HOST = 31,      -- 일반 좀비(숙주)
    LIGHT_ZOMBIE_HOST = 32,       -- 라이트 좀비(숙주)
    HEAVY_ZOMBIE_HOST = 33,       -- 헤비 좀비(숙주)
    PHYCHO_ZOMBIE_HOST = 34,      -- 사이코 좀비(숙주)
    VOODOO_ZOMBIE_HOST = 35,      -- 부두 좀비(숙주)
    DEIMOS_ZOMBIE_HOST = 36,      -- 데이모스(숙주)
    GANYMEDE_ZOMBIE_HOST = 37,    -- 가니메데(숙주)
    STAMPER_ZOMBIE_HOST = 38,     -- 스탬퍼(숙주)
    BANSHEE_ZOMBIE_HOST = 39,     -- 밴시(숙주)
    VENOMGUARD_ZOMBIE_HOST = 40,  -- 베놈가드(숙주)
    STINGFINGER_ZOMBIE_HOST = 41, -- 스팅핑거(숙주)
    METATRON_ZOMBIE_HOST = 42,    -- 메타트론(숙주)
    LILITH_ZOMBIE_HOST = 43,      -- 릴리스(숙주)
    CHASER_ZOMBIE_HOST = 44,      -- 체이서(숙주)
    BLOTTER_ZOMBIE_HOST = 45,     -- 블로터(숙주)
    RUSTYWING_ZOMBIE_HOST = 46,   -- 러스티 윙(숙주)
    AKSHA_ZOMBIE_HOST = 47,       -- 아크샤(숙주)
    SOLDIER_ZOMBIE_HOST = 48,     -- 솔져(숙주)
}

---무기 종류
---@enum Game.WEAPONTYPE
Game.WEAPONTYPE = {
    NONE = 0,
    KNIFE = 1,
    PISTOL = 2,
    GRENADE = 3,
    SUBMACHINEGUN = 4,
    SHOTGUN = 5,
    MACHINEGUN = 6,
    RIFLE = 7,
    SNIPERRIFLE = 8,
    EQUIPMENT = 9,
}

---플레이어 히트박스 부위
---@enum Game.HITBOX
Game.HITBOX = {
    HEAD = 1,
    CHEST = 2,
    STOMACH = 3,
    LEFTARM = 4,
    RIGHTARM = 5,
    LEFTLEG = 6,
    RIGHTLEG = 7,
}

---엔터티 종류
---@enum Game.ENTITYTYPE
Game.ENTITYTYPE = {
    ENTITY = 0,
    MONSTER = 1,
    PLAYER = 2,
}

---몬스터 종류
---@enum Game.MONSTERTYPE
Game.MONSTERTYPE = {
    NORMAL0 = 246,      -- 노말 좀비 LV.0
    NORMAL1 = 200,      -- 노말 좀비 LV.1
    NORMAL2 = 201,      -- 노말 좀비 LV.2
    NORMAL3 = 202,      -- 노말 좀비 LV.3
    NORMAL4 = 203,      -- 노말 좀비 LV.4
    NORMAL5 = 204,      -- 노말 좀비 LV.5
    NORMAL6 = 205,      -- 노말 좀비 LV.6
    RUNNER0 = 247,      -- 러너 좀비 LV.0
    RUNNER1 = 206,      -- 러너 좀비 LV.1
    RUNNER2 = 207,      -- 러너 좀비 LV.2
    RUNNER3 = 208,      -- 러너 좀비 LV.3
    RUNNER4 = 209,      -- 러너 좀비 LV.4
    RUNNER5 = 210,      -- 러너 좀비 LV.5
    RUNNER6 = 211,      -- 러너 좀비 LV.6
    HEAVY1 = 244,       -- 중장갑 좀비 LV.1
    HEAVY2 = 245,       -- 중장갑 좀비 LV.2
    GHOST = 1284,       -- 보자기 유령
    PUMPKIN = 1285,     -- 호박머리 허수아비
    PUMPKINHEAD = 1286, -- 호박머리
    A101AR = 1477,      -- A101AR
    A104RL = 1478,      -- A104RL
}

---ENTITY를 그릴때 이펙트 종류
---@enum Game.RENDERFX
Game.RENDERFX = {
    NONE = 0,
    GLOWSHELL = 18,
}

---무기 색상
---@enum Game.WEAPONCOLOR
Game.WEAPONCOLOR = {
    NONE = 0,
    GREEN = 1,
    WHITE = 2,
    RED = 3,
    BLUE = 4,
    YELLOW = 5,
    ORANGE = 6,
}

---ThirdPersonFixedView 기반 레이캐스트 방식
---@enum Game.THIRDPERSON_FIXED_PLANE
Game.THIRDPERSON_FIXED_PLANE = {
    GROUND = 0,
    XY = 1,
    XZ = 2,
    YZ = 3,
}

---특정 좌표에 위치한 플레이어를 찾습니다.
---영역블럭이랑 같은 판정이지만, 플레이어 1명의 데이터만 가져올 수 있습니다.
---@param position position
---@return Game.Player|nil
function Game.FindPlayerAt(position) end

---현재 게임시간을 가져옵니다.
---@return number
function Game.GetTime() end

---스크립트 트리거 블록을 작동시킵니다.
---@param name string
---@param value boolean
function Game.SetTrigger(name, value) end

---스크립트로 생성한 엔터티를 가져옵니다.
---@param index integer
---@return Game.Entity|nil
function Game.GetEntity(index) end

---랜덤 정수를 가져옵니다.
---@param min integer
---@param max integer
---@return integer
function Game.RandomInt(min, max) end

---랜덤 실수를 가져옵니다.
---@param min number
---@param max number
---@return number
function Game.RandomFloat(min, max) end

---스크립트 호출블럭 실행에 영향을 준 플레이어/몬스터 엔터티를 가져옵니다.
---@return Game.Entity|nil
function Game.GetTriggerEntity() end

---현재 함수를 호출한 스크립트 호출블럭을 가져옵니다.
---@return Game.EntityBlock|nil
function Game.GetScriptCaller() end

---다음 OnUpdate 이후 모든 몬스터를 죽입니다.
function Game.KillAllMonsters() end

-- ========================================
-- Entity
-- ========================================

---플레이어와 몬스터의 부모 객체
---
---여기 정의되어 있는 모든 변수와 함수들은 플레이어와 몬스터에서도 사용할수 있습니다.
---@class Game.Entity
---@field index integer 엔터티의 인덱스 번호를 가져옵니다.
---@field user table<string, any> 임의의 데이터를 저장할 수 있는 테이블입니다.
---@field health integer 엔터티의 체력을 가져오거나 변경합니다.
---@field maxhealth integer 엔터티의 최대체력을 가져오거나 변경합니다.
---@field armor integer 엔터티의 방탄복을 가져오거나 변경합니다.
---@field maxarmor integer 엔터티의 최대 방탄복을 가져오거나 변경합니다.
---@field position position 엔터티의 위치한 블록 좌표를 가져오거나 변경합니다.
---@field velocity velocity 엔터티의 속도를 가져오거나 변경합니다.
Game.Entity = Game.Entity or {}

---엔터티 타입을 가져옵니다.
---엔터티가 플레이어인지 몬스터인지 알수 있습니다.
---@return Game.ENTITYTYPE
function Game.Entity:GetEntityType() end

---엔터티가 몬스터인지 검사합니다.
---@return boolean
function Game.Entity:IsMonster() end

---엔터티가 플레이어인지 검사합니다.
---@return boolean
function Game.Entity:IsPlayer() end

---엔터티를 몬스터로 변환해서 가져옵니다.
---@return Game.Monster|nil
function Game.Entity:ToMonster() end

---엔터티를 플레이어로 변환해서 가져옵니다.
---@return Game.Player|nil
function Game.Entity:ToPlayer() end

---엔터티의 머리위에 데미지를 표시합니다
---이거 되긴하던가...
---@param damage number 표시할 데미지
---@param playerIndex integer 표시를 볼 수 있는 플레이어 인덱스. 0일 경우 모든 사람에게 표시합니다.
function Game.Entity:ShowOverheadDamage(damage, playerIndex) end

---엔티티 모델에 이펙트를 설정합니다.
---@param fx Game.RENDERFX|integer
function Game.Entity:SetRenderFX(fx) end

---엔티티 모델의 색상을 설정합니다.
---@param color color
function Game.Entity:SetRenderColor(color) end

-- ========================================
-- EntityBlock
-- ========================================

---스튜디오 장치 블록
---@class Game.EntityBlock
---@field id integer 장치 블록의 id를 가져옵니다.
---@field position position 장치 블록의 좌표를 가져옵니다.
---@field onoff boolean 장치의 현재 On/Off 상태를 가져옵니다.
---@field OnUse fun(self: Game.EntityBlock, player: Game.Player|nil) 플레이어가 장치 블록을 사용할 때 호출되는 이벤트 콜백입니다. player: 장치 블록을 사용한 플레이어, 없으면 nil.
---@field OnTouch fun(self: Game.EntityBlock, player: Game.Player|nil) 플레이어가 영역 장치 블록에 닿을 때 호출되는 이벤트 콜백입니다. player: 영역 장치 블록에 닿은 플레이어, 없으면 nil.
Game.EntityBlock = Game.EntityBlock or {}

---해당 좌표의 장치 블록을 가져옵니다.
---@param position position
---@return Game.EntityBlock|nil
function Game.EntityBlock.Create(position) end

---장치 블록를 작동시키는 함수입니다.
---장치마다 고유한 이벤트가 있는 경우가 있습니다.
---@param arg eventArg
---@param index? integer 인덱스 동작 안했던거 같은데
function Game.EntityBlock:Event(arg, index) end

---플레이어가 장치 블록을 사용할 때 호출되는 이벤트 콜백입니다
---@param player Game.Player|nil
function Game.EntityBlock:OnUse(player) end

---플레이어가 영역 장치 블록에 닿을 때 호출되는 이벤트 콜백입니다. (발판도 여기에 해당)
---@param player Game.Player|nil
function Game.EntityBlock:OnTouch(player) end

-- ========================================
-- Rule
-- ========================================

---게임 룰 객체
---@class Game.Rule
---@field name string 룰 이름을 가져오거나 변경합니다. (용도를 알 수 없음)
---@field desc string 룰 설명을 가져오거나 변경합니다. (용도를 알 수 없음)
---@field user table<string, any> 임의의 데이터를 저장할 수 있는 테이블입니다.
---@field respawnable boolean 플레이어 리스폰 여부를 가져오거나 변경합니다.
---@field respawnTime number 플레이어 리스폰 시간(초)을 가져오거나 변경합니다.
---@field enemyfire boolean 다른 팀 공격 여부를 가져오거나 변경합니다.
---@field friendlyfire boolean 아군 공격 여부를 가져오거나 변경합니다.
---@field breakable boolean 플레이어의 맵 파괴 기능을 가져오거나 변경합니다.
---@field OnPlayerConnect fun(self: Game.Rule, player: Game.Player) 플레이어가 접속할 때 호출되는 이벤트 콜백입니다. player: 접속한 플레이어.
---@field OnPlayerDisconnect fun(self: Game.Rule, player: Game.Player) 플레이어가 접속을 종료할 때 호출되는 이벤트 콜백입니다. player: 접속을 종료한 플레이어.
---@field OnRoundStart fun(self: Game.Rule) 라운드가 시작할 때 호출되는 이벤트 콜백입니다.
---@field OnRoundStartFinished fun(self: Game.Rule) 라운드 시작 과정이 모두 끝난 이후 호출되는 이벤트 콜백입니다. 맵 초기화 등의 작업은 여기서 처리합니다.
---@field OnPlayerSpawn fun(self: Game.Rule, player: Game.Player) 플레이어가 스폰될 때 호출되는 이벤트 콜백입니다. player: 스폰된 플레이어.
---@field OnPlayerJoiningSpawn fun(self: Game.Rule, player: Game.Player) 플레이어가 클래스를 선택한 후 처음 스폰될 때 호출되는 이벤트 콜백입니다. player: 처음 스폰된 플레이어.
---@field OnPlayerKilled fun(self: Game.Rule, victim: Game.Player, killer: Game.Player|nil, weapontype: Game.WEAPONTYPE|integer, hitbox: Game.HITBOX|integer) 플레이어가 사망할 때 호출되는 이벤트 콜백입니다. victim: 공격당한 플레이어. killer: 공격한 플레이어, 플레이어의 공격이 아닌 이유로 사망하면 nil. weapontype: 공격한 무기 타입. hitbox: 공격당한 부위.
---@field OnKilled fun(self: Game.Rule, victim: Game.Entity, killer: Game.Entity|nil) 플레이어 또는 몬스터가 사망할 때 호출되는 이벤트 콜백입니다. victim: 공격당한 엔터티. killer: 공격한 엔터티, 엔터티의 공격이 아닌 이유로 사망하면 nil.
---@field OnPlayerSignal fun(self: Game.Rule, player: Game.Player, signal: integer) UI.Signal를 사용하면 호출되는 이벤트 콜백입니다. player: 신호를 보낸 플레이어. signal: 플레이어가 보낸 신호값.
---@field OnUpdate fun(self: Game.Rule, time: number) 일정 시간마다 호출되는 이벤트 콜백입니다. 약 0.1초마다 호출됩니다. time: 현재 게임시간.
---@field OnPlayerAttack fun(self: Game.Rule, victim: Game.Player, attacker: Game.Player|nil, damage: integer, weapontype: Game.WEAPONTYPE|integer, hitbox: Game.HITBOX|integer): integer? 플레이어가 공격당할 때 호출되는 이벤트 콜백입니다. 반환값으로 실제 적용 데미지를 바꿀 수 있습니다. victim: 공격당한 플레이어. attacker: 공격한 플레이어, 플레이어가 아니면 nil. damage: 원래 데미지. weapontype: 공격한 무기 타입. hitbox: 공격당한 부위. return: 실제 적용할 데미지.
---@field OnTakeDamage fun(self: Game.Rule, victim: Game.Entity, attacker: Game.Entity|nil, damage: integer, weapontype: Game.WEAPONTYPE|integer, hitbox: Game.HITBOX|integer): integer? 플레이어 또는 몬스터가 공격당할 때 호출되는 이벤트 콜백입니다. 반환값으로 실제 적용 데미지를 바꿀 수 있습니다. victim: 공격당한 엔터티. attacker: 공격한 엔터티, 플레이어나 몬스터가 아니면 nil. damage: 원래 데미지. weapontype: 공격한 무기 타입. hitbox: 공격당한 부위. return: 실제 적용할 데미지.
---@field CanBuyWeapon fun(self: Game.Rule, player: Game.Player, weaponid: Common.WEAPON|integer): boolean? 무기를 구매할 수 있는지 검사하는 이벤트 콜백입니다. player: 대상 플레이어. weaponid: 무기 종류. return: 무기를 구매할 수 있으면 true.
---@field CanHaveWeaponInHand fun(self: Game.Rule, player: Game.Player, weaponid: Common.WEAPON|integer, weapon: Game.Weapon|nil): boolean? 무기를 손에 들 수 있는지 검사하는 이벤트 콜백입니다. player: 대상 플레이어. weaponid: 무기 아이디. weapon: 무기 객체, 없으면 nil. return: 무기를 손에 들 수 있으면 true.
---@field OnGetWeapon fun(self: Game.Rule, player: Game.Player, weaponid: Common.WEAPON|integer, weapon: Game.Weapon|nil) 무기를 획득했을 때 불리는 이벤트 콜백입니다. player: 대상 플레이어. weaponid: 무기 아이디. weapon: 무기 객체, 없으면 nil.
---@field OnReload fun(self: Game.Rule, player: Game.Player, weapon: Game.Weapon|nil, time: number) 장전할 때 불리는 이벤트 콜백입니다. player: 대상 플레이어. weapon: 무기 객체, 없으면 nil. time: 장전에 필요한 시간.
---@field OnReloadFinished fun(self: Game.Rule, player: Game.Player, weapon: Game.Weapon|nil) 장전이 끝나고 불리는 이벤트 콜백입니다. player: 대상 플레이어. weapon: 무기 객체, 없으면 nil.
---@field OnSwitchWeapon fun(self: Game.Rule, player: Game.Player) 무기를 교체할 때 불리는 이벤트 콜백입니다. player: 대상 플레이어.
---@field PostFireWeapon fun(self: Game.Rule, player: Game.Player, weapon: Game.Weapon|nil, time: number) 발사 이후 불리는 이벤트 콜백입니다. player: 대상 플레이어. weapon: 무기 객체, 없으면 nil. time: 다음 발사까지 걸리는 시간.
---@field OnGameSave fun(self: Game.Rule, player: Game.Player) 플레이어별 save 정보가 저장될 때 불리는 이벤트 콜백입니다. player: 대상 플레이어.
---@field OnLoadGameSave fun(self: Game.Rule, player: Game.Player) 플레이어별 save 정보가 로드될 때 불리는 이벤트 콜백입니다. player: 대상 플레이어.
---@field OnClearGameSave fun(self: Game.Rule, player: Game.Player) 플레이어별 save 정보를 삭제할 때 불리는 이벤트 콜백입니다. player: 대상 플레이어.
Game.Rule = Game.Rule or {}

---특정 팀이 승리합니다.
---exit 인자가 없으면 승리 후 게임이 종료됩니다.
---@param team Game.TEAM|integer
---@param exit? boolean
function Game.Rule:Win(team, exit) end

---모든 플레이어가 강제로 리스폰됩니다.
---
---※ 해당 메소드로 캐릭터 선택 중인 플레이어를 부활시키면 랜덤캐릭터로 선택됩니다.
---@param player Game.Player
function Game.Rule:Respawn(player) end

---현재 맵이 저장 가능한지 확인합니다.
---그룹이 지정된 경우에 true를 반환합니다.
---자세한 내용은 [도움말](https://cso.dn.nexoncdn.co.kr/vxlman/api/topics/gamesave.md.html)을 참고하세요.
---@return boolean
function Game.Rule:CanSave() end

---그룹에 저장할 값을 추가합니다.
---이 데이터는 플레이어와 상관없이 같은 그룹끼리 공유됩니다.
---자세한 내용은 [도움말](https://cso.dn.nexoncdn.co.kr/vxlman/api/topics/gamesave.md.html)을 참고하세요.
---
---**2026.04.08** 기준 그룹 데이터 저장기능은 **동작하지 않습니다.**
---@param name string
---@param value any
function Game.Rule:SetGameSave(name, value) end

---그룹에 저장된 값을 가져옵니다.
---이 데이터는 플레이어와 상관없이 같은 그룹끼리 공유됩니다.
---name이 없으면 nil을 리턴합니다.
---자세한 내용은 [도움말](https://cso.dn.nexoncdn.co.kr/vxlman/api/topics/gamesave.md.html)을 참고하세요.
---
---**2026.04.08** 기준 그룹 데이터 저장기능은 **동작하지 않습니다.**
---@param name string
---@return any
function Game.Rule:GetGameSave(name) end

-- ========================================
-- Monster
-- ========================================

---몬스터 객체
---
---Game.Entity 의 모든 내용을 상속받습니다
---@class Game.Monster : Game.Entity
---@field type Game.MONSTERTYPE|integer 몬스터 종류
---@field damage integer 몬스터의 데미지 실제 값
---@field speed number 몬스터의 이동 속도 배율
---@field viewDistance number 몬스터의 시야 거리 실제 값
---@field coin integer 몬스터를 잡았을 때 얻는 코인
---@field applyKnockback boolean 몬스터에 넉백을 적용할지 여부
---@field canJump boolean 몬스터가 점프를 할수있는지 여부
---@field checkAngle boolean 몬스터의 시야 각도 실제 값
Game.Monster = Game.Monster or {}

---해당 좌표에 몬스터를 생성합니다.
---좌표에 이미 다른 물체가 존재하는 경우 근처의 다른 장소(z는 고정)에 생성을 시도합니다. 일정 범위내의 좌표가 모두 생성 불가하다면 nil을 반환합니다.
---@param monstertype Game.MONSTERTYPE|integer 몬스터 타입
---@param position position 생성 좌표
---@return Game.Monster|nil monster 잘못된 타입, 좌표이거나 내부 게임로직에의해 생성이 제한될 경우 nil
function Game.Monster:Create(monstertype, position) end

---몬스터에게 플레이어를 공격하도록 명령합니다.
---
---**※ 보스 몬스터는 해당되지 않습니다.**
---@param player Game.Player 공격할 플레이어
function Game.Monster:AttackPlayer(player) end

---몬스터에게 해당 좌표로 이동하도록 명령합니다.
---이동중에 공격할 대상이 있다면 공격으로 전환합니다.
---
---**※ 보스 몬스터는 해당되지 않습니다.**
---@param position position
function Game.Monster:AttackTo(position) end

---몬스터에게 해당 좌표로 이동하도록 명령합니다.
---이동중에 공격할 대상이 있어도 공격하지 않습니다.
---
---**※ 보스 몬스터는 해당되지 않습니다.**
---@param position position
function Game.Monster:MoveTo(position) end

---몬스터에게 자리를 지키도록 명령합니다.
---공격사거리 안에 공격할 대상이 있다면 공격합니다.
---
---**※ 보스 몬스터는 해당되지 않습니다.**
---@param hold boolean hold 여부
function Game.Monster:Hold(hold) end

---몬스터에게 자리를 지키도록 명령합니다.
---공격사거리 안에 공격할 대상이 있어도 공격하지 않습니다.
---
---**※ 보스 몬스터는 해당되지 않습니다.**
---@param stop boolean stop 여부
function Game.Monster:Stop(stop) end

-- ========================================
-- Player
-- ========================================

---플레이어 객체
---
---Game.Entity 의 모든 내용을 상속받습니다
---@class Game.Player : Game.Entity
---@field name string 플레이어의 닉네임을 가져옵니다.
---@field death integer 플레이어의 사망 횟수를 가져옵니다.
---@field team Game.TEAM|integer 플레이어의 팀을 가져오거나 변경합니다.
---@field coin integer 플레이어의 스튜디오 재화를 가져오거나 변경합니다. 0에서 1,000,000,000까지 변경 가능합니다.
---@field model Game.MODEL|integer 플레이어의 현재 클래스를 가져오거나 변경합니다. Game.MODEL.DEFAULT는 플레이어가 입장 시 선택한 클래스입니다. 좀비 모델로 변경되면 자동으로 모든 무기가 제거되고, 무기를 획득 할 수 없습니다.
---@field flinch number 플레이어의 경직 배율을 가져오거나 변경합니다. 0.0에서 1.0까지 가능하고, 기본값은 1.0입니다. 기존 경직에 곱해집니다.
---@field knockback number 플레이어의 넉백 배율을 가져오거나 변경합니다. 0.0에서 3.0까지 가능하고, 기본값은 1.0입니다. 기존 넉백에 곱해집니다.
---@field maxspeed number 플레이어의 최대속력 배율을 가져오거나 변경합니다. 0.0에서 10.0까지 가능하고, 기본값은 1.0입니다. 기존 값에 곱해집니다. 곱해진 값이 게임엔진에서 정의하고 있는 최대속력보다 높아질 수는 없습니다.
---@field gravity number 플레이어의 중력 배율을 가져오거나 변경합니다. 0.0에서 10.0까지 가능하고, 기본값은 1.0입니다. 기존 값에 곱해집니다. 곱해진 값이 게임엔진에서 정의하고 있는 최대중력보다 높아질 수는 없습니다.
---@field infiniteclip boolean 탄창 무한여부인데 설명도 없을 뿐더러 동작 안하는거 같습니다.
---@field OnSpawn fun(self: Game.Player) 플레이어가 스폰될 때 호출되는 이벤트 콜백입니다.
---@field OnKilled fun(self: Game.Player, killer: Game.Player|nil) 플레이어가 사망할 때 호출되는 이벤트 콜백입니다. killer: 공격한 플레이어, 플레이어의 공격이 아닌 이유로 사망하면 nil.
---@field OnAssist fun(self: Game.Player, victim: Game.Player|nil, killer: Game.Player|nil) 플레이어가 어시스트할 때 호출되는 이벤트 콜백입니다. victim: 공격당한 플레이어, 없으면 nil. killer: 공격한 플레이어, 플레이어의 공격이 아닌 이유로 사망하면 nil.
Game.Player = Game.Player or {}

---인덱스 번호에 해당하는 플레이어를 가져옵니다.
---인덱스는 1번부터 시작됩니다
---@param index integer
---@return Game.Player|nil
function Game.Player.Create(index) end

---플레이어가 리스폰됩니다.
function Game.Player:Respawn() end

---플레이어가 사망합니다.
---**※ 방어구가 있으면 한 방에 안죽습니다.**
function Game.Player:Kill() end

---플레이어가 승리합니다.
---exit 인자가 없으면 승리 후 게임이 종료됩니다.
---@param exit? boolean 승리 후 게임 종료 여부
function Game.Player:Win(exit) end

---즐겨찾기 무기구매를 표시합니다.
function Game.Player:ShowBuymenu() end

---플레이어의 모든 무기를 제거합니다.
function Game.Player:RemoveWeapon() end

---그룹에 저장할 값을 추가합니다.
---이 데이터는 각 플레이어마다 따로 저장되고, 같은 그룹끼리 공유합니다.
---자세한 내용은 [도움말](https://cso.dn.nexoncdn.co.kr/vxlman/api/topics/gamesave.md.html)을 참고하세요
---
---**플레이어 데이터는 정상동작합니다.**
---@param name string 그룹데이터명
---@param value number|string|boolean 저장할 값
function Game.Player:SetGameSave(name, value) end

---그룹에 저장된 값을 가져옵니다.
---이 데이터는 각 플레이어마다 따로 저장되고, 같은 그룹끼리 공유합니다.
---자세한 내용은 [도움말](https://cso.dn.nexoncdn.co.kr/vxlman/api/topics/gamesave.md.html)을 참고하세요
---
---**플레이어 데이터는 정상동작합니다.**
---@param name string 그룹데이터명
---@return number|string|boolean|nil data 저장된 값
function Game.Player:GetGameSave(name) end

---플레이어의 카메라를 1인칭 시점으로 바꿉니다.
function Game.Player:SetFirstPersonView() end

---플레이어의 카메라를 3인칭 시점으로 바꿉니다.
---@param minDist number 카메라의 최소거리
---@param maxDist number 카메라의 최대거리
function Game.Player:SetThirdPersonView(minDist, maxDist) end

---플레이어의 카메라를 3인칭 시점으로 바꾸고 각도를 고정합니다.
---마우스포인터가 보여지고 사용자입력 방식이 마우스포인터 레이캐스트를 이용한 방식으로 변경됩니다. 레이캐스트 계산방식은 Player.SetThirdPersonFixedPlane 을 참고하십시오. [사용]과 [획득] 동작이 기존의 카메라시점 기반에서 플레이어 위치기반으로 변경됩니다. 줌을 이용하는 무기는 화면확대(fov)를 하지 않고 카메라 높이를 올리게 됩니다. M32 등의 유탄을 발사하는 무기들중에 유탄에 중력이 적용되는 무기들은 조준방식이 변경됩니다.
---@param yaw number
---@param pitch number
---@param minDist number
---@param maxDist number
function Game.Player:SetThirdPersonFixedView(yaw, pitch, minDist, maxDist) end

---ThirdPersonFixedView 상태에서 마우스포인터의 레이캐스트 계산 방식을 수정합니다.
---ThirdPersonFixedView가 아닐 경우 동작하지 않습니다. 예를들어 XY평면으로 설정할 경우 XY평면과 평행한 평면들중에 플레이어의 Z에 해당하는 평면에대해 레이캐스트를 수행하고 충돌지점을 기준점으로 잡습니다. 플레이어 캐릭터는 항상 기준점을 바라보며 총을 발사할 경우 기준점 방향으로 발사합니다. GROUND와 XY평면은 탑뷰 게임장르에 적절하며 XZ평면과 YZ평면은 프론트뷰 게임장르에 적절합니다.
---@param plane Game.THIRDPERSON_FIXED_PLANE
function Game.Player:SetThirdPersonFixedPlane(plane) end

---무기인벤토리를 보여줍니다.
function Game.Player:ShowWeaponInven() end

---무기인벤토리를 토글합니다. (열린상태일 경우 닫으며 닫힌상태일 경우 열어줍니다)
function Game.Player:ToggleWeaponInven() end

---플레이어에게 임의의 신호를 전송합니다.
---신호를 받으면 UI.Event.OnSignal 이벤트가 발생합니다.
---@param signal integer
function Game.Player:Signal(signal) end

---플레이어의 화면에 레벨/경험치 UI를 표시하고 수정합니다.
---@param level integer 플레이어 레벨
---@param expRate number 경험치바의 길이비율. 0.0에서 1.0까지 설정 가능합니다.
function Game.Player:SetLevelUI(level, expRate) end

---상점창의 각 무기항목에대해 잠금표시를 설정합니다.
---@param weaponid Common.WEAPON|integer 잠금표시를 설정할 무기 id
---@param uiLocked boolean true일 경우 잠금표시를 설정하고 false일 경우 해제합니다.
---@param level? integer 잠금표시와 함께 레벨 텍스트를 표시합니다. 값을 생략할 경우 표시되지 않습니다.
function Game.Player:SetBuymenuLockedUI(weaponid, uiLocked, level) end

---무기 인벤토리창의 각 무기항목에대해 잠금표시를 설정합니다.
---Common.UseWeaponInven 설정이 되어있어야 합니다.
---@param weaponid Common.WEAPON|integer 잠금표시를 설정할 무기
---@param uiLocked boolean true일 경우 잠금표시를 설정하고 false일 경우 해제합니다.
---@param level? integer 잠금표시와 함께 레벨 텍스트를 표시합니다. 값을 생략할 경우 표시되지 않습니다.
function Game.Player:SetWeaponInvenLockedUI(weaponid, uiLocked, level) end

---플레이어가 현재 들고 있는 주무기를 가져옵니다.
---주무기를 들고있지 않거나 Game.Weapon 클래스를 사용한적이 없거나 스크립트 무기 리스트에 포함되지 않은 무기일 경우 nil이 반환됩니다.
---@return Game.Weapon|nil
function Game.Player:GetPrimaryWeapon() end

---플레이어가 현재 들고 있는 보조무기를 가져옵니다.
---보조무기를 들고있지 않거나 Game.Weapon 클래스를 사용한적이 없거나 스크립트 무기 리스트에 포함되지 않은 무기일 경우 nil이 반환됩니다.
---@return Game.Weapon|nil
function Game.Player:GetSecondaryWeapon() end

---플레이어가 현재 무기인벤토리에 소지하고 있는 무기 리스트를 가져옵니다.
---Common.UseWeaponInven 설정이 되어있어야 합니다. 손에 들고 있는 무기들은 포함되지 않습니다. 결과 table에는 Game.Weapon들이 담겨있습니다.
---@return Game.Weapon[]
function Game.Player:GetWeaponInvenList() end

-- ========================================
-- SyncValue
-- ========================================

---클라이언트로 자동으로 동기화되는 변수
---@class Game.SyncValue
---@field name string SyncValue의 이름을 가져옵니다.
---@field value string|number|boolean SyncValue의 값을 가져오거나 변경합니다.
Game.SyncValue = Game.SyncValue or {}

---특정 이름의 Game.SyncValue를 만들거나 같은 이름의 Game.SyncValue를 얻어옵니다.
---@param name string
---@return Game.SyncValue
function Game.SyncValue:Create(name) end

-- ========================================
-- Weapon
-- ========================================

---무기 객체
---@class Game.Weapon
---@field user table<string, any> 임의의 데이터를 저장할 수 있는 테이블입니다.
---@field weaponid Common.WEAPON|integer 무기의 종류를 가져옵니다.
---@field color Game.WEAPONCOLOR|integer 무기의 색상을 가져오거나 설정합니다.
---@field damage number 무기 데미지의 배율을 가져오거나 설정합니다.
---@field speed number 무기 이동속도의 배율을 가져오거나 설정합니다.
---@field knockback number 무기 넉백의 배율을 가져오거나 설정합니다.
---@field flinch number 무기 경직의 배율을 가져오거나 설정합니다.
---@field criticalrate number 무기의 크리티컬 확률을 가져오거나 설정합니다.
---@field criticaldamage number 무기의 크리티컬 데미지 배율을 가져오거나 설정합니다 0에서 100사이의 값을 설정할 수 있습니다.
---@field bloodsucking number 무기의 흡혈비율을 가져오거나 설정합니다 0에서 100사이의 값을 설정할 수 있습니다.
---@field infiniteclip boolean 무기의 탄창을 무한으로 설정합니다
Game.Weapon = Game.Weapon or {}

---특정 좌표에 무기를 생성하여 떨어뜨립니다
---@param weaponid Common.WEAPON|integer 무기 종류
---@param position position 무기가 떨어질 좌표
---@return Game.Weapon|nil weapon 잘못된 id, 좌표가 전달되었거나 내부 게임로직에의해 생성이 제한될 경우 nil
function Game.Weapon.CreateAndDrop(weaponid, position) end

---무기의 WEAPONTYPE 값을 가져옵니다
---@return Game.WEAPONTYPE|integer
function Game.Weapon:GetWeaponType() end

---무기가 사용하는 탄창들중에 첫번째 탄창을 보충합니다.
---@param clip integer 탄창 수
function Game.Weapon:AddClip1(clip) end
