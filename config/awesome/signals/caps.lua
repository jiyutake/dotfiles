local awful = require('awful')
local gears = require('gears')

local caps_lock_script = "bash -c 'xset -q | sed -n \"s/^.*Caps Lock:\\s*\\(\\S*\\).*$/\\1/p\"'"
local caps_lock_status_old = nil

-- Check capslock state (nil until updated)
local function emit_caps_lock_status()
    awful.spawn.easy_async_with_shell(caps_lock_script, function(stdout)
        local caps_lock_status = stdout:match("on") and true or false
        if caps_lock_status ~= caps_lock_status_old then
            awesome.emit_signal('signal::capslock', caps_lock_status)
            caps_lock_status_old = caps_lock_status
        end
    end)
end

-- Delay between caps check (?)
gears.timer {
    timeout = 3,
    call_now = true,
    autostart = true,
    callback = function()
        emit_caps_lock_status()
    end
}
