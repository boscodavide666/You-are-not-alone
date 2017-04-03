local player =  require "modules/Characters/player"
local map = require "modules/Maps/map"
local camera = require "modules/camera"
local lightPower = require "modules/lightPower"
local game = require "modules/game"
local sti = require "modules/sti"
local enemy = require "modules/Characters/enemy"

function love.load(arg)
map.load()
player.load()
lightPower.load(mainChar.x - love.graphics.getWidth()/2, mainChar.y)
game.load()
enemy.load(750, 320)
treetop = sti("modules/Maps/treetop.lua")
end


function love.update(dt)
  map.update(dt, player.location)
  game.update(dt, player.location)
  player.update(dt)
  enemy.update(dt)
  lightPower.update(mainChar.x, mainChar.y)
  camera.setPosition(mainChar.x-love.graphics.getWidth()/2, mainChar.y- love.graphics.getHeight()/2, map.sxBorder, map.dxBorder, map.downBorder, map.upBorder)
end

function love.draw()
camera.set()
map.draw()
player.draw()
enemy.draw()
--
if game.isLightable and lightPower.isOn then
lightPower.draw()
elseif game.isLightable and lightPower.isOn == false then
lightPower.drawDarkness(map.myMap.width*map.myMap.tilewidth, map.myMap.height*map.myMap.tileheight)
--love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
--love.graphics.draw(enemy.dir, mainChar.x, 0)
end
if player.location == 1 then
  treetop:draw()
end
camera.unset()

end

 function love.keypressed(key)
   if player.location == -1 and key == "y" then
     love.event.quit()
   elseif player.location == -1 and key == "n" then
     player.location = 0
     mainChar.x = 640
     mainChar.y = 320
   end

   if key == "space" then
   if game.isLightable then
     if lightPower.isOn then
      lightPower.isOn = false
   else
     lightPower.isOn = true
   end
   end
 end
end
