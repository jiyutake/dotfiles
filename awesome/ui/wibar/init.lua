local awful = require('awful')
local gears = require('gears')
local beautiful = require('beautiful')
local xresources = require("beautiful.xresources")
local xrdb = xresources.get_current_theme()
local dpi = beautiful.xresources.apply_dpi
local wibox = require('wibox')
local round = function(cr, width, height)
    gears.shape.rounded_rect(cr, width, height, 5)
end


local module = require(... .. '.module')

return function(s)

   s.mypromptbox = awful.widget.prompt()

   s.mywibox = awful.wibar({

      position = 'left',
      width = dpi(26),
      --shape = round,
      border_width = dpi(4),
      screen   = s,
      widget   = {

         layout = wibox.layout.align.vertical,
	 
         {

	    {

               layout = wibox.layout.fixed.vertical,
	       shape = round,
               spacing = dpi(12),

               module.launcher(),
               module.taglist(s),

               s.mypromptbox

	    },

	    margins = dpi(6),
	    widget = wibox.container.margin

         },

         module.tasklist(s),
	 spacing = dpi(12),
	 widget = wibox.container.margin,

         {

	    {

               layout = wibox.layout.fixed.vertical,
	       spacing = dpi(12),

               wibox.widget.systray(),
               wibox.widget.textclock('%I\n%M'),

               module.layoutbox(s)
                
            },
	    
	    margins = dpi(6),
	    widget = wibox.container.margin

         }

      }

   })

end
