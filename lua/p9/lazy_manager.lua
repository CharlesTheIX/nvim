-- LAZY MANAGER
-- This file is used to manage the plugins that are installed lazily via the lazy.nvim plugin.
-- This is where you can set up the plugins that you want to install lazily and configure them as needed.
-- This is also where you can set up the lazy.nvim plugin itself.
-- This file is sourced in lua/p9/init.lua.

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }

	if vim.v.shell_error ~= 0 then
		error('Error cloning lazy.nvim:\n' .. out)
	end
end ---@diagnostic disable-next-line: undefined-field

vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- Colorscheme
  { "rose-pine/neovim", name = "rose-pine" },
  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    }
  },
  -- Treesitter
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  { 'nvim-treesitter/playground' },
  -- Harpoon
  { 'ThePrimeagen/harpoon' }
}


local options = {}

require("lazy").setup(plugins, options)
