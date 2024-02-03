local home = os.getenv('HOME') .. '/'

-- Why define those like this? i still don't know, but i can keep it.
local _M = {}

-- Location for diffrent services that will be used on either signals or widgets.
_M.screenshotdir = home .. 'Pictures/Screenshots/'
_M.wallpaper = home .. 'Pictures/Wallpapers/wallpaper.png'

-- Set the font used by the widgets
_M.font = "monospace 8"

return _M