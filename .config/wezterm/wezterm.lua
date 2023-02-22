local wezterm = require 'wezterm';

return {
	window_close_confirmation = "NeverPrompt",
	
	alternate_buffer_wheel_scroll_speed = 10,
	font = wezterm.font("JetBrains Mono"),
	font_size = 12,
	window_background_opacity = 0.95,

	-- use_fancy_tab_bar = false,
	-- tab_bar_at_bottom = true,

	enable_scroll_bar = true,
	initial_rows = 24,
	initial_cols = 104,

	-- timeout_milliseconds defaults to 1000 and can be omitted
	leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 },

	keys = {
		{key="q", mods="LEADER", action=wezterm.action{CloseCurrentPane={confirm=true}}},
		{key="[", mods="LEADER", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
		{key="]", mods="LEADER", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}}, 
		--splits navigation
		{key="j", mods="LEADER", action=wezterm.action{ActivatePaneDirection="Next"}},
		{key="k", mods="LEADER", action=wezterm.action{ActivatePaneDirection="Prev"}},
	},

	window_padding = {
		left = '1cell',
		right = '1cell',
		top = '0.0',
		bottom = '0.0',
	},

	colors = {
		scrollbar_thumb = 'gray',
		background = '#121212'
	},
	
	switch_to_last_active_tab_when_closing_tab = true,
	enable_wayland = true,
	scrollback_lines = 10000,

	-- color_scheme = "Jellybeans",
}


