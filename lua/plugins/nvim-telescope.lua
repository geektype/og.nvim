local utils = require("utils")

return utils.filter_plugin({
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = {
					"build",
				},
			},
		})
	end,
})
