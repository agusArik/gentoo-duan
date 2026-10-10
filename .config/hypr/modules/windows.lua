hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	name = "apply-video",
	match = {
		tag = "mpv",
	},
	opacity = "1.0 override",
	no_blur = true,
	float = true,
	center = true,
	content = "video",
	max_size = { 849, 477 },
})

hl.window_rule({ match = { class = "Nsxiv" }, float = true, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^.*(zathura)$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "sioyek" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "firefox" }, opacity = "1.0 override", workspace = "1 silent" })

-- GUI
hl.window_rule({ match = { class = "^(blue).*$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^[sS]team" }, opacity = "1.0 override", workspace = "3 silent", float = true })
hl.window_rule({ match = { class = "anki" }, opacity = "1.0 override", workspace = "4" })
hl.window_rule({ match = { class = "^([Vv]irt.*)" }, opacity = "1.0 override", workspace = "4 silent" })
hl.window_rule({ match = { class = ".*(KeePassXC)$" }, opacity = "1.0 override", workspace = "5" })
hl.window_rule({ match = { class = "gimp" }, opacity = "1.0 override", workspace = "6 silent" })
hl.window_rule({ match = { class = "^.*(obsproject).*" }, opacity = "1.0 override", workspace = "7" })
hl.window_rule({ match = { class = "^.*(Nicotine)$" }, opacity = "1.0 override", workspace = "8 silent" })
hl.window_rule({ match = { class = "^(discord)$" }, opacity = "1.0 override", workspace = "9" })
hl.window_rule({
	match = { class = "^(com.transmissionbt).*$" },
	opacity = "1.0 override",
	float = true,
	workspace = "10 silent",
})

hl.window_rule({ match = { class = "^(calibre).*$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "gcr-prompter" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "nwg-look" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^(Thunar).*$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^.*(pavucontrol)$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^(file).*$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^.*(mGBA).*$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^(libreoffice)-*$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "xdg-desktop-portal-gtk" }, opacity = "1.0 override" })

-- Fix pinentry losing focus
hl.window_rule({
	match = { class = "(pinentry-)(.*)" },
	stay_focused = true,
})
