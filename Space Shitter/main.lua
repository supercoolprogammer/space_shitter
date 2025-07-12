player = require("player")
function love.update()
	player.move()
end
function love.draw()
	player.draw()
end