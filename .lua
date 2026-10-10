-- Safe Lua simulation: egg collection practice
-- This does NOT connect to or modify any real game

-- Egg table
local eggs = {
    {id = 1, position = {x = 5, y = 2}},
    {id = 2, position = {x = 10, y = 4}},
    {id = 3, position = {x = 15, y = 6}}
}

-- Player position
local player = {x = 0, y = 0, speed = 5}

-- Function to move player toward target
local function moveTo(target)
    local dx = target.x - player.x
    local dy = target.y - player.y
    player.x = player.x + dx
    player.y = player.y + dy
end

-- Function to collect egg
local function collectEgg(egg)
    moveTo(egg.position)
    print("Collected egg #" .. egg.id .. " at (" .. egg.position.x .. ", " .. egg.position.y .. ")")
end

-- Practice loop
for _, egg in ipairs(eggs) do
    collectEgg(egg)
end

print("All eggs collected in simulation!")
