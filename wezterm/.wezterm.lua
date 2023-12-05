local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}
if wezterm.config_builder then
    config = wezterm.config_builder()
end

wezterm.on("gui-startup", function()
    local tab, pane, window = mux.spawn_window{}
    window:gui_window():maximize()
end)

return config