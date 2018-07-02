
-- set up hotkey combinations
local meta = {'cmd', 'alt'}

-------------------------------------
-- Reload when this file changes
-------------------------------------
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
local myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.notify.new({title="Hammerspoon", informativeText="Reloaded init.lua after modifications."}):send()


-------------------------------------
-- Window Positions
-------------------------------------
hs.window.animationDuration = 0

-- Grid of preset window positions
positions = {
    fullscreen = {x=0, y=0, w=1, h=1},
    centered = {x=0.15, y=0.15, w=0.7, h=0.7},

    left33 = {x=0, y=0, w=1/3, h=1},
    left50 = {x=0, y=0, w=1/2, h=1},
    left66 = {x=0, y=0, w=2/3, h=1},

    right33 = {x=2/3, y=0, w=1/3, h=1},
    right50 = {x=1/2, y=0, w=1/2, h=1},
    right66 = {x=1/3, y=0, w=2/3, h=1},

    middle33 = {x=1/3, y=0, w=1/3, h=1},
    middle50 = {x=.25, y=0, w=0.5, h=1},
    middle66 = {x=1/6, y=0, w=2/3, h=1}
}

-- commands
-- commands consist of a modifier, trigger key, and an array of positions to cycle through
commands = {
    {mod=meta, key='up', positions={positions.fullscreen, positions.centered}},
    {mod=meta, key='left', positions={positions.left33, positions.left50, positions.left66}},
    {mod=meta, key='right', positions={positions.right33, positions.right50, positions.right66}},
    {mod=meta, key='down', positions={positions.middle33, positions.middle50, positions.middle66}},
}

-- function that checks if two windows are similar size
function close_size(rect1, rect2)
    pos_error = math.sqrt((rect1.x - rect2.x) ^ 2 + (rect1.y - rect2.y) ^ 2)
    size_error = math.abs((rect1.w * rect1.h) / (rect2.w * rect2.h) - 1)
    -- we want to be within a 10 pixel radius of the upper left corner
    -- and within 15% of the area; this accounts for windows with large
    -- menubars
    return pos_error <= 10 and size_error <= 0.15
end

-- loop through the commands and bind them with a function that checks
-- the current position against the array of positions and returns the first/next
-- position as appropriate
hs.fnutils.each(commands, function(cmd)
    hs.hotkey.bind(
        cmd.mod, cmd.key, function()
            -- check the screen's position and check all the positions bound
            -- to the requested key. If we find a matching position, then we're
            -- going to assign the next position. Otherwise, use the first position
            -- for that key
            local cmd_po = cmd.positions
            local window = hs.window.focusedWindow()
            local screen = window:screen()
            local index = 0
            hs.fnutils.find(cmd.positions, function(p)
                index = index + 1
                local geo = hs.geometry.new(p):fromUnitRect(screen:frame())
                return close_size(window:frame(), geo, 1)
            end)
            if index == #cmd.positions then index = 0 end
            hs.window.focusedWindow():moveToUnit(cmd.positions[index + 1])
        end)
    end)

-- command that switches the window to next monitor
hs.hotkey.bind({'ctrl', 'cmd'}, 'down', function()
    local index = 0
    local allScreens = hs.screen.allScreens()
    local window = hs.window.focusedWindow()
    print(allScreens)
    hs.fnutils.find(allScreens, function(s)
        index = index + 1
        return s == window:screen()
    end)
    if index == #allScreens then index = 0 end
    print(allScreens[index + 1])
    window:moveToScreen(allScreens[index + 1])
end)
