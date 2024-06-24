require("lazy").setup({
    "rebelot/kanagawa.nvim",
    {"ellisonleao/gruvbox.nvim", priority = 1000, config = true},
    "romainl/Apprentice",
    "christoomey/vim-tmux-navigator",
    {"lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}},
    {'windwp/nvim-autopairs', event = "InsertEnter", config = true},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    require('plugins/dap'),
    require('plugins/neocord'),
    require('plugins/nvimtree'),
    require('plugins/treesitter'),
    require('plugins/bufferline'),
    require('plugins/nvim-telescope'),
    require('plugins/comment')
})

