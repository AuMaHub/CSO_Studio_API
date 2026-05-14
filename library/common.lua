---@meta
---@diagnostic disable: missing-return, unused-local

-- =========================================================
-- CSO Studio API
-- Common module
-- https://cso.dn.nexoncdn.co.kr/vxlman/api/modules/Common.html
-- =========================================================

---@class Common
Common = Common or {}

--- 해당 무기들만 Common.WeaponOption에서 사용할 수 있음
---@enum Common.WEAPON
Common.WEAPON = {
    P228 = 1, -- P228
    Scout = 3, -- 스카우트
    XM1014 = 5, -- XM1014 자동 샷건
    MAC10 = 7, -- MAC-10
    AUG = 8, -- AUG
    DualBeretta = 10, -- 듀얼 베레타
    FiveSeven = 11, -- 파이브-세븐
    UMP45 = 12, -- UMP45
    SG550Commando = 13, -- SG550 코만도
    Galil = 14, -- 갈릴
    FAMAS = 15, -- 파마스
    USP45 = 16, -- USP45
    Glock18C = 17, -- 글록 18C
    AWP = 18, -- AWP
    MP5 = 19, -- MP5
    M249 = 20, -- M249
    M3 = 21, -- M3
    M4A1 = 22, -- M4A1
    TMP = 23, -- TMP
    G3SG1 = 24, -- G3/SG-1
    DesertEagle50C = 26, -- 데저트 이글 50C
    SG552 = 27, -- SG552
    AK47 = 28, -- AK-47
    P90 = 30, -- P90
    SCAR = 31, -- SCAR
    USAS12 = 39, -- USAS12
    QBB95 = 41, -- QBB95
    MG3 = 45, -- MG3
    DualMP7A1 = 48, -- 듀얼 MP7A1
    AK47Custom = 50, -- AK47 커스텀
    DesertEagle50CGold = 56, -- 데저트 이글 50C 골드에디션
    WinchesterM1887 = 58, -- 윈체스터 M1887
    M134Minigun = 59, -- M134 미니건
    F2000 = 60, -- F2000
    WinchesterM1887Gold = 63, -- 윈체스터 M1887 골드에디션
    LightningAR1 = 65, -- 라이트닝 AR-1
    M24 = 66, -- M24
    DualInfinity = 67, -- 듀얼 인피니티
    DualInfinityCustom = 70, -- 듀얼 인피니티 커스텀
    QBB95AdditionalMag = 73, -- QBB95 + 추가 탄창
    MP7A1ExtendedMag = 74, -- MP7A1 확장 탄창
    SawedOffM79 = 75, -- M79 소드 오프
    DualInfinityFinal = 78, -- 듀얼 인피니티 파이널
    Crossbow = 83, -- 크로스보우
    USAS12CAMO = 88, -- USAS12 CAMO
    DoubleBarrelShotgun = 90, -- 더블바렐 샷건
    KrissSuperV = 95, -- 크리스 슈퍼V
    TAR21 = 102, -- TAR-21
    BarrettM95 = 103, -- 바렛 M95
    DualKriss = 105, -- 듀얼 크리스
    AN94 = 107, -- AN94
    M16A4 = 108, -- M16A4
    P90Lapin = 110, -- P90 라팡
    Volcano = 111, -- 볼케이노
    MG36 = 115, -- MG36
    Salamander = 118, -- 샐러맨더
    LightningSG1 = 126, -- 라이트닝 SG-1
    Tempest = 135, -- 템페스트
    BlackDragonCannon = 144, -- 흑룡포
    TMPDragon = 145, -- TMP 드래곤
    MK48 = 147, -- MK48
    FNFNC = 160, -- FN FNC
    L85A2 = 161, -- L85A2
    AKM = 163, -- AKM
    HK416 = 165, -- HK416
    LightningAR2 = 168, -- 라이트닝 AR-2
    Ethereal = 169, -- 에테리얼
    M32MGL = 170, -- M32 MGL
    BALROGVII = 172, -- BALROG-VII
    OICW = 183, -- OICW
    TripleBarrelShotgun = 192, -- 트리플바렐 샷건
    Ripper = 193, -- 리퍼
    K3 = 197, -- K3
    Needler = 200, -- 니들러
    SKULL4 = 201, -- SKULL-4
    BALROGXI = 203, -- BALROG-XI
    AK74U = 204, -- AK74U
    PlasmaGun = 207, -- 플라즈마건
    Leviathan = 209, -- 레비아탄
    UTS15PinkGold = 217, -- UTS-15 핑크 골드
    CompoundBow = 221, -- 컴파운드 보우
    ARX160 = 222, -- ARX-160
    GaeBolg = 233, -- 게이볼그
    Cyclone = 235, -- 싸이클론
    SPAS12Maverick = 239, -- SPAS12 매버릭
    Aeolis = 241, -- 아에올리스
    PetrolBoomer = 249, -- 페트롤 부머
    RailCannon = 257, -- 레일캐논
    Eruptor = 258, -- 용격포
    Slasher = 259, -- 슬래셔
    RPG7 = 275, -- RPG-7
    Guillotine = 277, -- 혈적자
    CrossbowAdvance = 279, -- 크로스보우 어드밴스
    FireVulcan = 281, -- 파이어 발칸
    JackHammer = 284, -- 잭 해머
    Coilgun = 295, -- 코일건
    DualUZI = 302, -- 듀얼 UZI
    LaserMinigun = 303, -- 레이저 미니건
    M4A1DarkKnight = 306, -- M4A1 다크나이트
    AK47Paladin = 307, -- AK47 팔라딘
    AttackM950 = 318, -- 어택 M950
    MagnumDrill = 319, -- 매그넘 드릴
    DesertEagleCrimsonHunter = 329, -- 데저트 이글 크림슨헌터
    FlameJackhammer = 337, -- 플레임 잭 해머
    SG552Lycanthrope = 338, -- SG552 라이칸스로프
    BroadDivine = 339, -- 브로드 디바인
    PythonDesperado = 373, -- 파이슨 데스페라도
    CHARGER7 = 377, -- CHARGER-7
    BOUNCER = 381, -- BOUNCER
    StunRifle = 385, -- 스턴 라이플
    DualBerettaGunslinger = 395, -- 듀얼 베레타 건슬링거
    M249Phoenix = 397, -- M249 피닉스
    StarChaserAR = 398, -- 스타체이서 AR
    M32MGLVenom = 400, -- M32 MGL 베놈
    MG3CSOGSEdition = 417, -- MG3 10th 에디션
    ThunderGhostWalker = 431, -- 썬더 고스트 워커
    Stinger = 432, -- 스팅어
    InfinityLaserFist = 440, -- 인피니티 레이저 피스트
    ShiningHeartRod = 449, -- 샤이닝 하트 로드
}

---특정 무기의 WeaponOption 클래스를 가져옵니다.
---
---API 문서에 없는 무기값은 InGameID 정수를 직접 넣어 사용할 수 있습니다.  
---전체 레퍼런스는 `stubs/weapon_ingameid_reference.lua` 또는  
---`data/weapon_trans_20260208.csv`의 `InGameID` 컬럼을 참고하세요.  
---@param weaponid Common.WEAPON|integer
---@return Common.WeaponOption
function Common.GetWeaponOption(weaponid) end

---무기 인벤토리 기능 사용
---@param value boolean
function Common.UseWeaponInven(value) end

---현재 장착중인 무기들을 저장하도록 설정
---@param value boolean
function Common.SetSaveCurrentWeapons(value) end

---무기 인벤토리 내용을 저장하도록 설정 (UseWeaponInven이 먼저 설정되어 있어야 합니다)
---@param value boolean
function Common.SetSaveWeaponInven(value) end

---저장정보 불러오기를 자동으로 수행합니다
---@param value boolean
function Common.SetAutoLoad(value) end

---웨폰파츠 기능 비활성
---@param value boolean
function Common.DisableWeaponParts(value) end

---무기강화 기능 비활성
---@param value boolean
function Common.DisableWeaponEnhance(value) end

---게임시작 시 기본무기를 지급하지 않게 합니다
---@param value boolean
function Common.DontGiveDefaultItems(value) end

---팀킬을 해도 정상킬로 처리합니다
---@param value boolean
function Common.DontCheckTeamKill(value) end

---상점을 시나리오 상점창을 사용하게 합니다
---@param value boolean
function Common.UseScenarioBuymenu(value) end

---총을 구매할 때 돈이 필요하도록 합니다
---@param value boolean
function Common.SetNeedMoney(value) end

---발사 시 머즐 이펙트를 새로운 형태로 그립니다. Scale이 적용되지 않습니다
---@param value boolean
function Common.UseAdvancedMuzzle(value) end

---발사 시 머즐 이펙트 크기 수정
---@param value number
function Common.SetMuzzleScale(value) end

---피격 시 피 이펙트 크기 수정
---@param value number
function Common.SetBloodScale(value) end

---총알이 벽 등에 맞았을 경우 이펙트 크기 수정
---@param value number
function Common.SetGunsparkScale(value) end

---히트박스 크기 수정
---@param value number
function Common.SetHitboxScale(value) end

---몬스터 등의 엔터티에 마우스오버를 할 경우 외곽선이 보이게 합니다.
---
---플레이어가 `Game.Player:SetThirdPersonFixedView`와 같은 3인칭 모드에서
---마우스오버를 할 경우에만 해당됩니다.
---@param value boolean
---@param color RGB
function Common.SetMouseoverOutline(value, color) end

---모든 주무기의 탄창 한개당 가격을 통일합니다
---@param price integer
function Common.SetUnitedPrimaryAmmoPrice(price) end

---모든 보조무기의 탄창 한개당 가격을 통일합니다
---@param price integer
function Common.SetUnitedSecondaryAmmoPrice(price) end

---상점 무기 리스트 설정 (UseScenarioBuymenu 설정 필요)
---@param list integer[]
function Common.SetBuymenuWeaponList(list) end

---@class Common.WeaponOption
---@field weaponid Common.WEAPON|integer 가리키고 있는 무기 종류
---@field user table<string, any> 임의의 데이터를 저장할 수 있는 테이블
---@field price integer 무기 구매가격 (Common.SetNeedMoney 설정 필요)
---@field damage number 데미지 배율 (Game.Weapon과 함께 쓰면 곱연산)
---@field penetration number 관통력 배율
---@field rangemod number 거리 데미지 감쇠율 배율
---@field cycletime number 연사 속도 배율
---@field reloadtime number 장전 속도 배율
---@field accuracy number 정확도 배율
---@field spread number 동작 수행 시 정확도 저하 정도 배율
Common.WeaponOption = Common.WeaponOption or {}

---@param color RGB
function Common.WeaponOption:SetBulletColor(color) end
