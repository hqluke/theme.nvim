-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local config = require('vscode.config')
local vscode = {}
local colors = {}

if vim.o.background == 'dark' then
    colors.inactive = '#666666'
    colors.inactive2 = '#777777'
    colors.inactive3 = '#888888'
    colors.bg = '#262626'
    colors.bg2 = '#373737'
    colors.fg = '#ffffff'
    colors.red = '#f44747'
    colors.green = '#D7BA7D' -- insert: orange
    colors.blue = '#D7BA7D' -- normal: pink
    colors.lightblue = '#5CB6F8'
    colors.yellow = '#D7BA7D' -- visual: unchanged
    colors.pink = '#bb846e' -- command: red orange
else
    colors.inactive = '#888888'
    colors.bg = '#F5F5F5'
    colors.bg2 = '#E4E4E4'
    colors.fg = '#343434'
    colors.red = '#FF0000'
    colors.green = '#008000'
    colors.blue = '#AF00DB'
    colors.lightblue = '#0451A5'
    colors.yellow = '#c08000'
    colors.pink = '#FFA3A3'
end

local theme = {
    a = { fg = colors.inactive3, bg = colors.bg },
    b = { fg = colors.blue, bg = colors.bg2 },
    c = { fg = colors.yellow, bg = colors.bg },
    x = { fg = colors.inactive, bg = colors.bg },
    z = { fg = colors.inactive2, bg = colors.bg2 },
}

return {
    normal = theme,
    insert = theme,
    visual = theme,
    replace = theme,
    command = theme,
    terminal = theme,
    inactive = theme,
}
