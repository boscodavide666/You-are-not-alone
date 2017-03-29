local bg = require "modules/bg"
local player =  require "modules/player"
camera = require "modules/camera"

function love.load(arg)
player.load(dt)
bg.loadMainBg()
end

function love.update(dt)

player.animation(dt)
player.move(bg.dxBorder, bg.sxBorder, bg.upBorder, bg.downBorder)
camera.setPosition(player.posX-love.graphics.getWidth()/2, player.posX-love.graphics.getHeight()/2, bg.sxCamBorder, bg.dxCamBorder, bg.upCamBorder, bg.downCamBorder)
bg.selectBg(player.location)
end

function love.draw()
camera.set()
bg.draw()
love.graphics.draw(player.img, player.posX, player.posY)
camera.unset()
end

function love.keypressed(key)
  if player.location == -1 and key == "y" then
    love.event.quit()
  elseif player.location == -1 and key == "n" then
    player.location = 0
    player.posX = love.graphics.getWidth()/2
    player.posX = love.graphics.getHeight()/2
  end
end
