---@meta

---좌표
---@class position
---@field x integer
---@field y integer
---@field z integer

---엔티티 속도
---@class velocity
---@field x number
---@field y number
---@field z number

---이벤트 액션
---@class eventArg
---@field action string|"text"|"signal"|"use"|"touch"|"reset"|"password"|nil
---@field value string|nil

---@class color
---@field r integer
---@field g integer
---@field b integer

---@class screensize
---@field width integer
---@field height integer

---@alias stringtable table<string, string>
---@alias RGB color
---@alias RGBA { r: integer, g: integer, b: integer, a: integer }

---@class UI.BoxSetArg
---@field x? integer
---@field y? integer
---@field width? integer
---@field height? integer
---@field r? integer
---@field g? integer
---@field b? integer
---@field a? integer

---@class UI.TextSetArg
---@field text? string
---@field font? string
---@field align? string
---@field x? integer
---@field y? integer
---@field width? integer
---@field height? integer
---@field r? integer
---@field g? integer
---@field b? integer
---@field a? integer
