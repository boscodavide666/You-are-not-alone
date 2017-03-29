local bg = require "modules/bg"
local player =  require "modules/player"
camera = require "modules/camera"

function love.load(arg)
player.load(dt)
bg.load()
end

function love.update(dt)
--background.printBg(background.location)
player.animation(dt)
player.move(bg.dxBorder, bg.sxBorder, bg.upBorder, bg.downBorder)
camera.setPosition(player.posX-love.graphics.getWidth()/2, bg.sxBorder, player.posY - love.graphics.getHeight()/2, bg.upBorder, bg.downBorder)
--camera.move(player.vel, player.vel)


end

function love.draw()
camera.set()
bg.draw()
love.graphics.draw(player.img, player.posX, player.posY)
camera.unset()
end
