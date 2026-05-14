---@meta
---@diagnostic disable: missing-return, unused-local

-- =========================================================
-- CSO Studio API
-- UI module
-- https://cso.dn.nexoncdn.co.kr/vxlman/api/modules/UI.html
-- =========================================================

---@class UI
UI = UI or {}

---키 입력
---@enum UI.KEY
UI.KEY = {
    NUM1 = 0,       -- 1 키
    NUM2 = 1,       -- 2 키
    NUM3 = 2,       -- 3 키
    NUM4 = 3,       -- 4 키
    NUM5 = 4,       -- 5 키
    NUM6 = 5,       -- 6 키
    NUM7 = 6,       -- 7 키
    NUM8 = 7,       -- 8 키
    NUM9 = 8,       -- 9 키
    NUM0 = 9,       -- 0 키
    A = 10,          -- A 키
    B = 11,          -- B 키
    C = 12,          -- C 키
    D = 13,          -- D 키
    E = 14,          -- E 키
    F = 15,          -- F 키
    G = 16,          -- G 키
    H = 17,          -- H 키
    I = 18,          -- I 키
    J = 19,          -- J 키
    K = 20,          -- K 키
    L = 21,          -- L 키
    M = 22,          -- M 키
    N = 23,          -- N 키
    O = 24,          -- O 키
    P = 25,          -- P 키
    Q = 26,          -- Q 키
    R = 27,          -- R 키
    S = 28,          -- S 키
    T = 29,          -- T 키
    U = 30,          -- U 키
    V = 31,          -- V 키
    W = 32,          -- W 키
    X = 33,          -- X 키
    Y = 34,          -- Y 키
    Z = 35,          -- Z 키
    SHIFT = 36,      -- 쉬프트
    SPACE = 37,      -- 스페이스바
    ENTER = 38,      -- 엔터
    UP = 39,         -- 위쪽 화살표
    DOWN = 40,       -- 아래쪽 화살표
    LEFT = 41,       -- 왼쪽 화살표
    RIGHT = 42,      -- 오른쪽 화살표
    MOUSE1 = 43,     -- 마우스 왼쪽버튼
    MOUSE2 = 44,     -- 마우스 오른쪽버튼
}

---화면 사이즈를 가져옵니다.
---@return screensize
function UI.ScreenSize() end

---플레이어의 인덱스 번호를 가져옵니다. Game.Entity.index와 동일합니다.
---@return integer
function UI.PlayerIndex() end

---현재 시간을 가져옵니다.
---@return number
function UI.GetTime() end

---게임 스크립트로 시그널을 보냅니다.
---@param signal integer
function UI.Signal(signal) end

---일정 시간동안 이동과 공격을 금지합니다.
---플레이어가 사망하면 초기화됩니다. 0~60초까지 가능합니다.
---@param stop boolean 정지여부
function UI.StopPlayerControl(stop) end


--- ===============================================
--- UI SyncValue
--- ===============================================

---@class UI.SyncValue
---@field name string
---@field value number|string|boolean
---@field OnSync fun(self: UI.SyncValue) SyncValue가 동기화 될 때 호출되는 이벤트 콜백입니다.
UI.SyncValue = UI.SyncValue or {}

---Game.SyncValue와 동일한 name을 사용하면 데이터가 동기화 됩니다.  
---ex) Game.SyncValue:Create("round")와 UI.SyncValue:Create("round")는 Game에서 변경 후 UI에서 받아볼 수 있음
---@param name string
---@return UI.SyncValue
function UI.SyncValue:Create(name) end

--- ===============================================
--- UI Box
--- ===============================================
---사각형 UI 객체
---@class UI.Box
UI.Box = UI.Box or {}

---사각형 UI 객체를 생성합니다.  
---동시에 최대 1024개까지 생성할 수 있습니다.  
---: <- 이거 아니고 .이거임
---@return UI.Box|nil box 갯수 제한을 초과하면 nil
function UI.Box.Create() end

---화면에 표시합니다.
function UI.Box:Show() end

---화면에 표시되지 않도록 변경합니다.
function UI.Box:Hide() end

---현재 화면에 표시중인지 여부를 가져옵니다.
---@return boolean
function UI.Box:IsVisible() end

---객체의 속성을 변경합니다.
---@param arg UI.BoxSetArg
function UI.Box:Set(arg) end

---객체의 속성이 담긴 테이블을 가져옵니다.
---@return UI.BoxSetArg info
function UI.Box:Get() end


---@class UI.Text
UI.Text = UI.Text or {}

---텍스트 UI 객체를 생성합니다.
---동시에 최대 1024개까지 생성할 수 있습니다.
---@return UI.Box|nil text 갯수 제한을 초과하면 nil
---@return UI.Text
function UI.Text.Create() end

---화면에 표시합니다.
function UI.Text:Show() end

---화면에 표시되지 않도록 변경합니다.
function UI.Text:Hide() end

---현재 화면에 표시중인지 여부를 가져옵니다.
---@return boolean
function UI.Text:IsVisible() end

---객체의 속성을 변경합니다.
---@param setArg UI.TextSetArg
function UI.Text:Set(setArg) end

---객체의 속성이 담긴 테이블을 가져옵니다.
---@return UI.TextSetArg
function UI.Text:Get() end


--- ===============================================
--- UI Event
--- ===============================================
---UI 이벤트 콜백
---@class UI.Event
---@field OnRoundStart fun(self: UI.Event) 라운드가 시작할 때 호출되는 이벤트 콜백입니다.
---@field OnSpawn fun(self: UI.Event) 플레이어가 스폰될 때 호출되는 이벤트 콜백입니다.
---@field OnKilled fun(self: UI.Event) 플레이어가 사망할 때 호출되는 이벤트 콜백입니다.
---@field OnInput fun(self: UI.Event, inputs: UI.KEY) 플레이어가 키를 누르고 있으면 지속적으로 호출되는 이벤트 콜백입니다. inputs: 키 상태 배열.
---@field OnUpdate fun(self: UI.Event, time: number) 프레임마다 호출되는 이벤트 콜백입니다. time: 현재 게임시간.
---@field OnChat fun(self: UI.Event, text: string) 플레이어가 채팅을 입력하면 호출되는 이벤트 콜백입니다. text: 채팅 내용.
---@field OnSignal fun(self: UI.Event, signal: integer) 서버로부터 signal을 받았을 때 호출되는 이벤트 콜백입니다. signal: 전달받은 신호값.
---@field OnKeyDown fun(self: UI.Event, inputs: UI.KEY) 플레이어가 키를 누를 때 호출되는 이벤트 콜백입니다. inputs: 키 배열.
---@field OnKeyUp fun(self: UI.Event, inputs: UI.KEY) 플레이어가 키를 떼면 호출되는 이벤트 콜백입니다. inputs: 키 배열.
UI.Event = UI.Event or {}