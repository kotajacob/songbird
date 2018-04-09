--   Copyright (C) 2018 Dakota Walsh   --
-- Songbird - A love2d engine extender --

-- import class library
local Class = require 'libs/classic'

-- love load callback
function love.load()
	-- require resources
	require 'room'

	-- initialize resources
	Room = class_room("room_main")
end

-- love update callback
function love.update(dt)
	Room:update(dt)
end

-- love draw callback
function love.draw()
	Room:draw()
end
