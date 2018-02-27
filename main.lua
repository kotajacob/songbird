--   Copyright (C) 2018 Dakota Walsh   --
-- Songbird - A love2d engine extender --

-- import class library
local class = require 'libs/middleclass'

-- love load callback
function love.load()
	-- require resources
	require 'room'

	-- initialize resources
	ROOM = Room:new("room_main")
end

-- love update callback
function love.update(dt)
	ROOM:update(dt)
end

-- love draw callback
function love.draw()
	ROOM:draw()
end
