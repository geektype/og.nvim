local config = require("config")
local utils = require("utils")

return utils.filter_plugin({
	"echasnovski/mini.starter",
	config = function()
		require("mini.starter").setup({
			header = config.home.header,
			footer = config.home.footer,
		})
	end,
})
