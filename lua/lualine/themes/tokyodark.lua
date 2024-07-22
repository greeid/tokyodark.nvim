-- Copyright (c) 2021-2022 tiagovla
-- License: MIT
--
local p = require("tokyodark.palette")
local colors = {
    bg = p.bg1,
    nbg = p.bg3,
    fg = p.fg,
    red = p.red,
    green = p.green,
    yellow = p.yellow,
    orange = p.orange,
    blue = p.blue,
    purple = p.purple,
    cyan = p.cyan,
    grey = p.grey,
}

local tokyo_dark = {
    inactive = {
        a = { fg = colors.grey, bg = colors.bg, gui = "bold" },
        b = { fg = colors.grey, bg = colors.bg },
        c = { fg = colors.grey, bg = colors.bg },
        x = { fg = colors.grey, bg = colors.bg },
        y = { fg = colors.grey, bg = colors.bg },
        z = { fg = colors.grey, bg = colors.bg },
    },
    normal = {
        a = { fg = colors.blue, bg = colors.nbg, gui = "bold" },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
        x = { fg = colors.green, bg = colors.bg },
        y = { fg = colors.orange, bg = colors.bg },
        z = { fg = colors.red, bg = colors.nbg },
    },
    visual = {
        a = { fg = colors.blue, bg = colors.nbg, gui = "bold" },
        x = { fg = colors.green, bg = colors.bg },
        y = { fg = colors.orange, bg = colors.bg },
        z = { fg = colors.red, bg = colors.nbg },
    },
    replace = {
        a = { fg = colors.orange, bg = colors.nbg, gui = "bold" },
        x = { fg = colors.green, bg = colors.bg },
        y = { fg = colors.orange, bg = colors.bg },
        z = { fg = colors.red, bg = colors.nbg },
    },
    insert = {
        a = { fg = colors.purple, bg = colors.nbg, gui = "bold" },
        x = { fg = colors.green, bg = colors.bg },
        y = { fg = colors.orange, bg = colors.bg },
        z = { fg = colors.red, bg = colors.nbg },
    },
    command = {
        a = { fg = colors.green, bg = colors.nbg, gui = "bold" },
        x = { fg = colors.green, bg = colors.bg },
        y = { fg = colors.orange, bg = colors.bg },
        z = { fg = colors.red, bg = colors.nbg },
    },
}

local mt = {}
function mt:__index(k)
    if k == "colors" then
        return colors
    end
end

tokyo_dark = setmetatable(tokyo_dark, mt)

return tokyo_dark
