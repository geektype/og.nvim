local utils = require("utils")

return utils.filter_plugin({
	"numToStr/Comment.nvim",
	lazy = false,
	config = function()
		require("Comment").setup({
			toggler = {
				line = "<leader>/",
			},
			opleader = {
				line = "<leader>/",
			},
		})
	end,
})
