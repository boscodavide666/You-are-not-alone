local background = require "modules/bg"
local player =  require "modules/player"

function love.load(arg)
player.load()
end

function love.update(dt)
background.move(player.vel, player.location, player.posY)
player.animation(dt)
end

function love.draw()
love.graphics.draw(background.startBg, background.posX, background.posY)
love.graphics.draw(player.img, player.posX, player.posY)

end
