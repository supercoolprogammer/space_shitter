local player = {}
player.x = 0
player.y = 600 - 64
player.vx = 0
player.spr = love.graphics.newImage("spaceship.png")
function player.move()
    if love.keyboard.isDown("left") or love.keyboard.isDown("a")  then
        player.vx = player.vx - 1
    end
    if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
        player.vx = player.vx + 1
    end
    player.vx = player.vx * 0.8
    player.x = player.x + player.vx
end
function player.draw()
	love.graphics.draw(player.spr, player.x, player.y)
end
return player
