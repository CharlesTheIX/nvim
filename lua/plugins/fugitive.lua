return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Opens the Git status of the project" })
  end
}
