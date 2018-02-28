-- Import class library
local class = require '../libs/middleclass'

-- Create room class

Room = class('Room')

function Room:initialize(name)
	-- get the name of the room to load
	self.name = name

	-- try to open the sroom file
	local room_path = "rooms/" .. self.name .. ".sroom"
	if (love.filesystem.exists(room_path)) then
		-- found the sroom file
	else
		print("ERROR: Failed to load room " .. name)
		print("Check the name and extension of the room you're trying to load")
		love.event.quit(1)
	end
end

function Room:update(dt)
end

function Room:draw()
end
