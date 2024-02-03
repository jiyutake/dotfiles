-- Luarocks (idk why)
pcall(require, "luarocks.loader")

-- Libraries
local beautiful = require('beautiful')
local gfs = require('gears.filesystem')
local naughty = require('naughty')

-- Makes sure the error message pops up if something is not working
naughty.connect_signal("request::display_error", function(message, startup)
    naughty.notification {
      urgency = "critical",
      title = "You messed up.."..(startup and " during startup!" or "!"),
      message = message
    }
end)

-- Load theme.lua
beautiful.init(gfs.get_configuration_dir() .. 'theme.lua')

-- Load other files on the configuration directory.
-- Add anything here if you want to include a new file
require('autostart')
require('keybinds')
require('user')
require('signals')
require('widgets')