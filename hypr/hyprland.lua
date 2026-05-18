-- _   _                  _                 _ 
--| | | |                | |               | |
--| |_| |_   _ _ __  _ __| | __ _ _ __   __| |
--|  _  | | | | '_ \| '__| |/ _` | '_ \ / _` |
--| | | | |_| | |_) | |  | | (_| | | | | (_| |
--\_| |_/\__, | .__/|_|  |_|\__,_|_| |_|\__,_|
--        __/ | |                             
--       |___/|_|                             

-- This hyprland.lua file contains my main configuration for Hyprland
-- All referenced files are located at .config/hypr/conf

------------------
---- MONITORS ----
------------------

require("conf/monitor")

---------------------
----- PROGRAMS ------
---------------------

local terminal    = "kitty"
local webExplorer = "firefox"
local fileManager = "dolphin"
local menu        = "rofi -show drun"

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function () 
   hl.exec_cmd(terminal)
   hl.exec_cmd("nm-applet")
   hl.exec_cmd("waybar & hyprpaper & hypridle")
 end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-----------------------
---- LOOK AND FEEL ----
-----------------------

require("conf/interface")
require("conf/anims")

---------------
---- INPUT ----
---------------

require("conf/input")

---------------------
---- KEYBINDINGS ----
---------------------

require("conf/binds")

-- Default window rules, untouched --
--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

require("conf/rules")