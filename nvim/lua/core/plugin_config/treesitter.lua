require'nvim-treesitter.configs'.setup{
  ensure_installed = { "lua", "vue" },

  sync_install = false,
  highlight = {
    enable = true
  }
}
