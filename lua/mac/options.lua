-- Options
-- Neopvim options are set here.
-- This file is sourced in lua/p9/init.lua.

-- Cursor
vim.opt.guicursor = "" -- Sets the cursor character

-- Line Numbers
vim.opt.number = true -- Sets the line numbers
vim.opt.relativenumber = true -- Sets relative line numbers

-- Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Display
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = false