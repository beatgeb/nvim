local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'catppuccin/nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'christoomey/vim-tmux-navigator',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate"
  },
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  {
    'williamboman/mason.nvim',
    build = ":MasonUpdate"
  },
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make'
  },
  'tpope/vim-fugitive',
  'lewis6991/gitsigns.nvim',
  'sindrets/diffview.nvim',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag'
}


local opts = {}

require("lazy").setup(plugins, opts)
