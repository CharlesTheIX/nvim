-- GLOBALS
-- Global variables that are used throughout the configuration are set here.
-- This is a good place to set global variables that are used in multiple places in the configuration.
-- This file is sourced in lua/p9/init.lua.

-- Set leader
vim.g.mapleader = " " -- Sets the leader character for custom maps and motions
vim.g.maplocalleader = " " -- Sets the local leader character for custom maps and motions

-- Fonts
vim.g.have_nerd_font = true -- Enable the Nerd font to be used

-- Netrw
vim.cmd("let g:netrw_liststyle = 3")

-- Remaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Return to [p]roject [v]iew from buffer' })
vim.keymap.set("n", "<leader>w", "<C-w>", { desc = 'Enter window mode' })