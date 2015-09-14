player = {}
	player.pic = love.graphics.newImage("pic/ball.png")
	player.x = 50
	player.y = 50
	player.speed = 100

function player_move(dt)
	if love.keyboard.isDown("a") then
		player.x = player.x - (player.speed * dt)
	elseif love.keyboard.isDown("d") then
		player.x = player.x + (player.speed * dt)
	end
	if love.keyboard.isDown("w") then
		player.y = player.y - (player.speed * dt)
	elseif love.keyboard.isDown("s") then
		player.y = player.y + (player.speed * dt)
	end
	if love.keyboard.isDown("escape") then
		love.event.quit()
	end
end

function player_draw()
	love.graphics.print("X: "..math.floor((player.x)), 10, 10) -- output X coordinates
	love.graphics.print("Y: "..math.floor((player.y)), 10, 20) -- output Y coordinates
	-- love.graphics.print("FPS "..tostring(love.timer.getFPS()), 10, 30) -- show FPS
	love.graphics.draw(player.pic, player.x, player.y)
end

function player_collision()
	if player.x < 0 then
		player.x = 0
	end
	if player.y < 0 then
		player.y = 0
	end
	if player.x + player.pic:getWidth() > 800 then
		player.x = 800 - player.pic:getWidth()
	end
	if player.y + player.pic:getHeight() > 600 then
		player.y = 600 - player.pic:getHeight()
	end
end
