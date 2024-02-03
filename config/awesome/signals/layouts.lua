-- Lib
local awful = require("awful")

screen.connect_signal("request::desktop_decoration", function(s)
	tag.connect_signal("request::default_layouts", function()
        -- Layouts. Hell yeah.
    	awful.layout.append_default_layouts({
        awful.layout.suit.tile,
        -- awful.layout.suit.spiral.dwindle,
        awful.layout.suit.max,
    	})
	end)

    awful.tag({ "1", "2", "3", "4", "5" }, s, awful.layout.layouts[1])
end)
