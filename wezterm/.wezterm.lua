local wezterm = require("wezterm")
local mux = wezterm.mux
local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

config.hide_mouse_cursor_when_typing = false
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

return config
