local utils = require("utils")
return utils.filter_plugin({
	"stevearc/conform.nvim",

	event = { "BufWritePre", "BufNewFile" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>o",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	-- Everything in opts will be passed to setup()
	opts = {
		-- Define your formatters
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "gofumpt", "goimports", "golines" },
		},
		-- Set up format-on-save
		format_on_save = { timeout_ms = 1000, lsp_format = "fallback" },
		-- Customize formatters
		formatters = {},
	},
	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
})
