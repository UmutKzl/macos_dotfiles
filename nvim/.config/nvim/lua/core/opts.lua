-- Variables {{{
local o = vim.opt
local g = vim.g
local cmd = vim.cmd
-- }}}

-- Leader key {{{
g.mapleader = " "
g.maplocalleader = " "
-- }}}

-- Line numbers {{{
o.number = true
o.relativenumber = true
o.cursorline = true
-- }}}

-- Tabs {{{
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
-- }}}

-- Clipboard {{{
o.clipboard = "unnamedplus"
-- }}}

-- Folding {{{
o.foldmethod = "marker"
-- }}}

-- Mode {{{
o.showmode = false
-- }}}

-- Update time {{{
o.updatetime = 250
-- }}}

-- Neovide {{{
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font:h16"
end
-- }}}

-- Colorscheme {{{
cmd.colorscheme("dracula")
-- }}}
