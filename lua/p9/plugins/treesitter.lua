-- TREESITTER

require("nvim-treesitter.configs").setup({
  ensure_installed = { "bash", "c_sharp", "css", "csv", "dockerfile", "go", "html", "javascript", "json", "lua", "markdown", "markdown_inline", "php", "powershell", "python", "scss", "sql", "terraform", "tsx", "typescript", "vue", "yaml" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true }
})
