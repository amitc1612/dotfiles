-- ~/.config/hypr/hyprland.lua
-- Converted from hyprland.conf

-- Define variables
local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "rofi -show drun"
local browser = "firefox"
local scriptsDir = os.getenv("HOME") .. "/.config/hypr/scripts"

-- Main configuration
hl.config({
    -- General settings
    general = {
        border_size = 2,
        gaps_in = 5,
        gaps_out = 10,
        resize_on_border = true,
        layout = "dwindle",
    },

    -- Decoration settings (rounding, opacity, shadows, blur)
    decoration = {
        rounding = 20,
        active_opacity = 0.95,
        inactive_opacity = 0.85,
        fullscreen_opacity = 1.0,
        dim_inactive = true,
        dim_strength = 0.1,
        dim_special = 0.8,
        
        shadow = {
            enabled = true,
            range = 3,
            render_power = 1,
        },
        
        blur = {
            enabled = true,
            size = 2,
            passes = 3,
            ignore_opacity = true,
            new_optimizations = true,
            special = true,
            popups = true,
        },
    },

    -- Animation settings
    animations = {
        enabled = true,
        bezier = {
            "wind, 0.05, 0.9, 0.1, 1.05",
            "winIn, 0.1, 1.1, 0.1, 1.1",
            "winOut, 0.3, -0.3, 0, 1",
            "liner, 1, 1, 1, 1",
            "overshot, 0.05, 0.9, 0.1, 1.05",
            "smoothOut, 0.5, 0, 0.99, 0.99",
            "smoothIn, 0.5, -0.5, 0.68, 1.5",
        },
        animation = {
            "windows, 1, 6, wind, slide",
            "windowsIn, 1, 5, winIn, slide",
            "windowsOut, 1, 3, smoothOut, slide",
            "windowsMove, 1, 5, wind, slide",
            "border, 1, 1, liner",
            "borderangle, 1, 180, liner, loop",
            "fade, 1, 3, smoothOut",
            "workspaces, 1, 5, overshot",
            "workspacesIn, 1, 5, winIn, slide",
            "workspacesOut, 1, 5, winOut, slide",
        },
    },

    -- Input settings (keyboard, mouse, touchpad, tablet)
    input = {
        kb_layout = "us, il",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        repeat_rate = 50,
        repeat_delay = 300,
        sensitivity = 0.3,
        accel_profile = "flat",
        numlock_by_default = true,
        left_handed = false,
        follow_mouse = true,
        float_switch_override_focus = false,
        
        touchpad = {
            disable_while_typing = true,
            natural_scroll = true,
            clickfinger_behavior = false,
            middle_button_emulation = true,
            tap_to_click = true,
            drag_lock = false,
        },
        
        touchdevice = {
            enabled = true,
        },
        
        tablet = {
            transform = 0,
            left_handed = 0,
        },
    },

    -- Gesture settings
    gestures = {
        workspace_swipe = false, -- Not specified in original, default false
    },

    -- Dwindle layout settings
    dwindle = {
        preserve_split = true,
        special_scale_factor = 0.8,
    },

    -- Master layout settings
    master = {
        new_status = "master",
        mfact = 0.5,
    },

    -- Misc settings
    misc = {
        disable_hyprland_logo = false,
        disable_splash_rendering = false,
        vrr = 2,
        mouse_move_enables_dpms = true,
        enable_swallow = true,
        swallow_regex = "^(kitty)$",
        focus_on_activate = true,
        initial_workspace_tracking = 0,
        middle_click_paste = false,
    },

    -- Bind settings
    binds = {
        workspace_back_and_forth = true,
        allow_workspace_cycles = true,
        pass_mouse_when_bound = false,
    },

    -- XWayland settings
    xwayland = {
        enabled = true,
        force_zero_scaling = true,
    },

    -- Render settings
    render = {
        direct_scanout = 0,
    },

    -- Cursor settings
    cursor = {
        sync_gsettings_theme = true,
        no_hardware_cursors = 2,
        enable_hyprcursor = true,
        warp_on_change_workspace = 2,
        no_warps = true,
    },

    -- Environment variables
    env = {
        -- Toolkit Backend Variables
        "GDK_BACKEND,wayland,x11,*",
        "QT_QPA_PLATFORM,wayland;xcb",
        "CLUTTER_BACKEND,wayland",
        
        -- xdg Specifications
        "XDG_CURRENT_DESKTOP,Hyprland",
        "XDG_SESSION_DESKTOP,Hyprland",
        "XDG_SESSION_TYPE,wayland",
        
        -- QT Variables
        "QT_AUTO_SCREEN_SCALE_FACTOR,1",
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1",
        "QT_QPA_PLATFORMTHEME,qt5ct",
        
        -- hyprland-qt-support
        "QT_QUICK_CONTROLS_STYLE,org.hyprland.style",
        
        -- xwayland apps scale fix
        "GDK_SCALE,1",
        "QT_SCALE_FACTOR,1",
        
        -- HyprCursor
        "HYPRCURSOR_THEME,rose-pine-hyprcursor",
        "HYPRCURSOR_SIZE,35",
        
        -- Firefox
        "MOZ_ENABLE_WAYLAND,1",
        
        -- Electron >28 apps
        "ELECTRON_OZONE_PLATFORM_HINT,auto",
    },
})

-- Keybindings
-- Basic application launchers
hl.bind(mainMod .. ", return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. ", Q", hl.dsp.window.close())
hl.bind("CTRL ALT, Delete", hl.dsp.exec_cmd("hyprctl dispatch exit 0"))
hl.bind(mainMod .. ", E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. ", SPACE", hl.dsp.window.toggle_floating())
hl.bind(mainMod .. ", D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. ", B", hl.dsp.exec_cmd(browser))

-- Layout management (Master)
hl.bind(mainMod .. " CTRL, D", hl.dsp.layout.msg("removemaster"))
hl.bind(mainMod .. ", I", hl.dsp.layout.msg("addmaster"))
hl.bind(mainMod .. ", J", hl.dsp.layout.msg("cyclenext"))
hl.bind(mainMod .. ", K", hl.dsp.layout.msg("cycleprev"))
hl.bind(mainMod .. " CTRL, Return", hl.dsp.layout.msg("swapwithmaster"))

-- Dwindle layout
hl.bind(mainMod .. ", P", hl.dsp.window.pseudo())

-- Split ratio
hl.bind(mainMod .. ", M", hl.dsp.exec_cmd("hyprctl dispatch splitratio 0.3"))

-- Group management
hl.bind(mainMod .. ", G", hl.dsp.window.toggle_group())
hl.bind(mainMod .. " CTRL, tab", hl.dsp.window.change_group_active())

-- Window cycling
hl.bind("ALT, tab", hl.dsp.window.cycle())
hl.bind("ALT, tab", hl.dsp.window.bring_to_top())

-- Window resizing (with binde = repeating)
hl.bind(mainMod .. " SHIFT, left", hl.dsp.window.resize({ x = -50, y = 0 }), { repeating = true })
hl.bind(mainMod .. " SHIFT, right", hl.dsp.window.resize({ x = 50, y = 0 }), { repeating = true })
hl.bind(mainMod .. " SHIFT, up", hl.dsp.window.resize({ x = 0, y = -50 }), { repeating = true })
hl.bind(mainMod .. " SHIFT, down", hl.dsp.window.resize({ x = 0, y = 50 }), { repeating = true })

-- Move windows
hl.bind(mainMod .. " CTRL, left", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " CTRL, right", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " CTRL, up", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " CTRL, down", hl.dsp.window.move({ direction = "d" }))

-- Swap windows
hl.bind(mainMod .. " ALT, left", hl.dsp.window.swap({ direction = "l" }))
hl.bind(mainMod .. " ALT, right", hl.dsp.window.swap({ direction = "r" }))
hl.bind(mainMod .. " ALT, up", hl.dsp.window.swap({ direction = "u" }))
hl.bind(mainMod .. " ALT, down", hl.dsp.window.swap({ direction = "d" }))

-- Move focus
hl.bind(mainMod .. ", left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. ", right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. ", up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. ", down", hl.dsp.focus({ direction = "d" }))

-- Workspace navigation
hl.bind(mainMod .. ", tab", hl.dsp.workspace({ name = "m+1" }))
hl.bind(mainMod .. " SHIFT, tab", hl.dsp.workspace({ name = "m-1" }))

-- Special workspace (scratchpad)
hl.bind(mainMod .. " SHIFT, U", hl.dsp.window.move({ workspace = "special" }))
hl.bind(mainMod .. ", U", hl.dsp.workspace.toggle_special())

-- Media keys (with bindl = locked)
hl.bind(", xf86AudioPlayPause", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --pause"), { locked = true })
hl.bind(", xf86AudioPause", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --pause"), { locked = true })
hl.bind(", xf86AudioPlay", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --pause"), { locked = true })
hl.bind(", xf86AudioNext", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --nxt"), { locked = true })
hl.bind(", xf86AudioPrev", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --prv"), { locked = true })
hl.bind(", xf86AudioStop", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --stop"), { locked = true })

-- Volume control (bindel = locked + repeating)
hl.bind(", xf86AudioRaiseVolume", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --inc"), { locked = true, repeating = true })
hl.bind(", xf86AudioLowerVolume", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --dec"), { locked = true, repeating = true })
hl.bind(", xf86AudioMicMute", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --toggle-mic"), { locked = true })
hl.bind(", xf86AudioMute", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --toggle"), { locked = true })
hl.bind(", xf86Sleep", hl.dsp.exec_cmd("systemctl suspend"), { locked = true })
hl.bind(", xf86Rfkill", hl.dsp.exec_cmd(scriptsDir .. "/AirplaneMode.sh"), { locked = true })

-- Workspace switching (1-10 using key codes)
-- Note: code:10 = key 1, code:11 = key 2, etc.
local key_codes = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19}
for i = 1, 10 do
    local code = key_codes[i]
    -- Switch to workspace
    hl.bind(mainMod .. ", code:" .. code, hl.dsp.workspace({ name = tostring(i) }))
    -- Move window to workspace
    hl.bind(mainMod .. " SHIFT, code:" .. code, hl.dsp.window.move({ workspace = tostring(i) }))
    -- Move window silently to workspace
    hl.bind(mainMod .. " CTRL, code:" .. code, hl.dsp.window.move({ workspace = tostring(i), silent = true }))
end

-- Bracket navigation for workspaces
hl.bind(mainMod .. " SHIFT, bracketleft", hl.dsp.window.move({ workspace = -1 }))
hl.bind(mainMod .. " SHIFT, bracketright", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " CTRL, bracketleft", hl.dsp.window.move({ workspace = -1, silent = true }))
hl.bind(mainMod .. " CTRL, bracketright", hl.dsp.window.move({ workspace = 1, silent = true }))

-- Scroll through workspaces
hl.bind(mainMod .. ", mouse_down", hl.dsp.workspace({ name = "e+1" }))
hl.bind(mainMod .. ", mouse_up", hl.dsp.workspace({ name = "e-1" }))
hl.bind(mainMod .. ", period", hl.dsp.workspace({ name = "e+1" }))
hl.bind(mainMod .. ", comma", hl.dsp.workspace({ name = "e-1" }))

-- Mouse bindings for window movement/resizing
hl.bindm(mainMod .. ", mouse:272", hl.dsp.window.move())  -- left click
hl.bindm(mainMod .. ", mouse:273", hl.dsp.window.resize()) -- right click

-- Auto-start applications (exec-once)
hl.exec_once("waybar")
hl.exec_once("nm-applet --indicator")
hl.exec_once("swaync")
hl.exec_once("hypridle")
hl.exec_once("hyprpaper")
hl.exec_once("hyprsunset")
hl.exec_once("wl-paste --type text --watch cliphist store")
hl.exec_once("wl-paste --type image --watch cliphist store")