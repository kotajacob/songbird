-- Import class library
local Class = require '../libs/classic'

-- Create room class

class_room = Class:extend()

function class_room:new(name)
	-- variables to store basic room information
	self.name = name
	self.size = {960, 540}
	self.view_size = self.size
	self.follow_object = nil
	self.follow_distance = nil
	self.background_image = nil
	self.background_color = {1, 1, 1}
	self.tiles = {}
	self.objects = {}

	-- try to open the sroom file
	local room_path = "rooms/" .. self.name .. ".sroom"
	if (love.filesystem.getInfo(room_path)) then
		-- found the sroom file
		for line in love.filesystem.lines(room_path) do
			-- get the first part of the line
			-- this value determines what we do with the following data
			local line_index = string.sub(line, 1, string.find(line, ",") - 1)

			-- remove the first part from the line so we can get the next part
			line = string.sub(line, string.find(line, ",") + 1, string.len(line))
			
			-- if size
			if (line_index == "size") then
				-- set self.size to the next values.
			end

			-- if view_size
			if (line_index == "view_size") then
				-- set self.view_size to the next values.
			end

			-- if follow_object
			if (line_index == "follow_object") then
				-- set self.follow_object to the next values.
			end

			-- if follow_distance
			if (line_index == "follow_distance") then
				-- set self.follow_distance to the next values.
			end

			-- if background_color
			if (line_index == "background_color") then
				-- set self.background_color.
			end

			-- if background_image
			if (line_index == "background_image") then
				-- set self.background_image to the next value.
			end

			-- if tile
			if (line_index == "tile") then
				-- load the tiles position and load it to the tiles table for rendering.
			end

			-- if object
			if (line_index == "object") then
				-- create the object and add it the objects table.
			end

			-- print(string.find(line, ","))
			-- local line_p2 = string.sub(line, 1, string.find(line, ",") - 1)
		end
	else
		-- failed to find the sroom file
		print("ERROR: Failed to load room " .. self.name)
		print("Check the name and extension of the room you're trying to load")
		love.event.quit(1)
	end
end

function class_room:update(dt)
end

function class_room:draw()
end
