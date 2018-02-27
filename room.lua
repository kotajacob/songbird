-- Import class library
local class = require '../libs/middleclass'

-- Create room class

Room = class('Room')

function Room:initialize(name)
	self.name = name
end

function Room:update(dt)
end

function Room:draw()
end
