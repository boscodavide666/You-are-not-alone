local player =  require "modules/Characters/player"
local map = require "modules/Maps/map"
local camera = require "modules/camera"
local lightPower = require "modules/lightPower"
local game = require "modules/game"
local sti = require "modules/sti"
local enemy = require "modules/Characters/enemy"
local enemy01 = require "modules/Characters/enemy01"
local enemy02 = require "modules/Characters/enemy02"
local enemy03 = require "modules/Characters/enemy03"
local enemy04 = require "modules/Characters/enemy04"
local enemy05 = require "modules/Characters/enemy05"
local boy01 = require "modules/Characters/boy01"
local villageChief = require "modules/Characters/villageChief"
font = love.graphics.newFont("assets/font/8-bit pusab.ttf", 12)


function love.load(arg)
map.load()
player.load()
lightPower.load(mainChar.x - love.graphics.getWidth()/2, mainChar.y)
game.load()
boy01.load()
villageChief.load()
enemy.load(602, 290)
enemy01.load(1200, 2432)
enemy02.load(1450, 2070)
enemy03.load(684, 2066)
enemy04.load(530, 1250)
enemy05.load(1250, 470)

treetop = sti("modules/Maps/treetop.lua")
end


function love.update(dt)
  map.update(dt, player.location)
  game.update(dt, player.location)
  player.update(dt)
  player.die(dt, ghost.x, ghost.y)
  player.die(dt, ghost01.x, ghost01.y)
  player.die(dt, ghost02.x, ghost02.y)
  player.die(dt, ghost03.x, ghost03.y)
  player.die(dt, ghost04.x, ghost04.y)
  player.die(dt, ghost05.x, ghost05.y)
 if game.isDungeon then
  enemy.update(dt)
  enemy01.update(dt)
  enemy02.update(dt, mainChar.x)
  enemy03.update(dt)
  enemy04.update(dt)
  enemy05.update(dt)
elseif game.isVillage then
  boy01.update(dt)
  villageChief.update(dt)
  game.interact(dt, mainChar.x, mainChar.y)
  end
  lightPower.update(mainChar.x, mainChar.y)
  camera.setPosition(mainChar.x-love.graphics.getWidth()/2, mainChar.y- love.graphics.getHeight()/2, map.sxBorder, map.dxBorder, map.downBorder, map.upBorder)

end

function love.draw()
camera.set()
map.draw()
player.draw()

if game.isDungeon then
enemy.draw()
enemy01.draw()
enemy02.draw()
enemy03.draw()
enemy04.draw()
enemy05.draw()
elseif game.isVillage then
boy01.draw()
villageChief.draw()
end
--
if game.isLightable and lightPower.isOn then
lightPower.draw()
elseif game.isLightable and lightPower.isOn == false then
lightPower.drawDarkness(map.myMap.width*map.myMap.tilewidth, map.myMap.height*map.myMap.tileheight)
end
if player.location == 1 then
  treetop:draw()
end
if game.isTalking then
game.talkBox(mainChar.x - 640, mainChar.y + 180, 1280, 1280)
end
--love.graphics.print(ghost01.x , mainChar.x, mainChar.y - 64)
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
if key == "d" then
  player.location = 2
  mainChar.x = 2560 / 2 + player.size
  mainChar.y = 2560 - 100
end
end
