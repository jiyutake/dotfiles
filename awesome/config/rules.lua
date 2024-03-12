local awful = require( 'awful' )
local ruled = require( 'ruled' )

--- Rules.
-- Rules to apply to new clients.
ruled.client.connect_signal( 'request::rules', function()

	ruled.client.append_rule({

		id = 'global',
		rule = {

			--

		},

		properties = {

			focus = awful.client.focus.filter,
                        raise = true,
                        screen = awful.screen.preferred,
                        placement = awful.placement.no_overlap + awful.placement.no_offscreen

      }

   })

   -- Floating clients.
   ruled.client.append_rule({
	   
	   id       = 'floating',
	   rule_any = {
		   
		   instance = {
		
			   'copyq', 'pinentry'
		   
		   },
		   
		   class = {

			   'Arandr', 'Blueman-manager', 'Gpick'

		   },
		   
		   role = {

			   'AlarmWindow', 'ConfigManager', 'pop-up'

		   }

      },

      properties = {

	      floating = true 
      
      }
   
   })

   -- Add titlebars to normal clients and dialogs.
   ruled.client.append_rule({ id = 'titlebars',

      rule_any = {

	      type = {

		      'normal', 'dialog'
	      
	      }

      },

      properties = {

	      titlebars_enabled = true
      
      }

   })

   -- Set Firefox to always map on the tag named '2' on screen 1.
   --
   { 

      rule = {

	      class = 'Firefox'

      },

      properties = {

	      tag = awful.screen.focused().selected_tag,
	      maximized = false,
	      floating = false

      }

   }

end)
