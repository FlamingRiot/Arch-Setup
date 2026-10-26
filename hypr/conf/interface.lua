-- _____      _             __               
--|_   _|    | |           / _|              
--  | | _ __ | |_ ___ _ __| |_ __ _  ___ ___ 
--  | || '_ \| __/ _ \ '__|  _/ _` |/ __/ _ \
-- _| || | | | ||  __/ |  | || (_| | (_|  __/
-- \___/_| |_|\__\___|_|  |_| \__,_|\___\___|

-- unscale XWayland
hl.config({
  xwayland = {
    force_zero_scaling = true
  }
})

hl.config({
    -- General looks --
    general = {
        gaps_in  = 6,
        gaps_out = 10,
        border_size = 2,

        col = {
            active_border   = "rgba(9fc1d4aa)",
            inactive_border = "rgba(595959aa)",
        },

        resize_on_border = true,
        allow_tearing = false,

        layout = "dwindle",
    },

    -- Environement decoration -- 
    decoration = {
        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    -- Layout configuration --
    dwindle = {
        preserve_split = true,
    },

    -- Disable default hyprland configs --
    misc = {
        force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})
