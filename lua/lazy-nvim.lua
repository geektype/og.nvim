-- Bootstrap
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

-- Setup
require("lazy").setup({
    "rebelot/kanagawa.nvim",
    "christoomey/vim-tmux-navigator",
    {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("nvim-tree").setup {}
      end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
          local configs = require("nvim-treesitter.configs")

          configs.setup({
              ensure_installed = { "c", "lua", "vim", "vimdoc"},
              sync_install = false,
              highlight = { enable = true },
              indent = { enable = true },  
            })
        end
     },
     {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {}
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
    {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    },
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

})
