local utils = require("utils")
return utils.filter_plugin({
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "go", "javascript", "typescript", "zig" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
})
