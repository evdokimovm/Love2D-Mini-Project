require "character"

function love.load()
	
end

function love.update(dt)
	player_move(dt)
	player_collision()
end

function love.draw()
	love.graphics.setBackgroundColor(215, 194, 121) -- background
	player_draw()
end
