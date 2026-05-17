-- _____                  _   
--|_   _|                | |  
--  | | _ __  _ __  _   _| |_ 
--  | || '_ \| '_ \| | | | __|
-- _| || | | | |_) | |_| | |_ 
-- \___/_| |_| .__/ \__,_|\__|
--           | |              
--           |_|              

hl.config({
    -- Keyboard and mouse -- 
    input = {
        kb_layout  = "ch",
        kb_variant = "fr",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})

-- 3 finger gestures --
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

hl.gesture({
    fingers = 3,
    direction = "down",
    action = "float",
    mode = "float"
})

hl.gesture({
    fingers = 3,
    direction = "up",
    action = "float",
    mode = "tile",
})