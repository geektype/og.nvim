require("lazy").setup({
	{ import = "themes" },
	"christoomey/vim-tmux-navigator",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "windwp/nvim-autopairs", event = "InsertEnter", config = true },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
	{ "lewis6991/gitsigns.nvim", config = true },
	-- Investigate: For some reason placing this anywhere but here slows neovim down to a crawl...
	{ import = "plugins" },
})
