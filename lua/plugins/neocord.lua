local utils = require("utils")

return utils.filter_plugin({
	"IogaMaster/neocord",
	event = "VeryLazy",
	opts = {
		show_time = true,
		logo = "auto",
	},
})
