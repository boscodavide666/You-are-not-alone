local background = require "modules/bg"
local player =  require "modules/player"

function love.load(arg)
player.load()
scale = 3
circleTransition = love.graphics.newImage("assets/Image/transition4.png")
end

function love.update(dt)
background.move(player.vel, player.location, player.posY)
--while scale > 0 do
scale = scale - dt
--end
end

function love.draw()
love.graphics.draw(background.startBg, background.posX, background.posY)
love.graphics.draw(player.img, player.posX, player.posY)

love.graphics.draw(circleTransition, love.graphics.getWidth()/2, love.graphics.getHeight()/2, 0, scale, scale, love.graphics.getWidth()/2, love.graphics.getHeight()/2)

end
