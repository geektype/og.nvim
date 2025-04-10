local config = require("config")

local function is_plugin_excluded(plugin_name)
	for _, excluded in ipairs(config.exclude_plugins) do
		if excluded == plugin_name then
			return true
		end
	end
	return false
end

local function filter_plugin(plugin_table)
	local plugin_name = plugin_table[1]
	if not is_plugin_excluded(plugin_name) then
		return plugin_table
	end
	return {}
end

return {
	filter_plugin = filter_plugin,
}
