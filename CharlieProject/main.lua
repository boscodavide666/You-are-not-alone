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
local boy02 = require "modules/Characters/boy02"
local girl = require "modules/Characters/girl02"
local guardian01 = require "modules/Characters/guardian01"
local guardian02 = require "modules/Characters/guardian02"
local clue01 = require "modules/Clues/clue01"
local x = 1
local villageChief = require "modules/Characters/villageChief"
font = love.graphics.newFont("assets/font/Cabanyal-Z.ttf", 24)


function love.load(arg)
map.load()
player.load()
lightPower.load(mainChar.x - love.graphics.getWidth()/2, mainChar.y)
game.load()
boy01.load(384, 956)
boy02.load(1272, 1288)
girl.load(1328, 842)
guardian01.load(904, 32)
guardian02.load(960, 32)
villageChief.load(1576, 1416)
enemy.load(602, 290)
enemy01.load(1230, 2432)
enemy02.load(1450, 2070)
enemy03.load(684, 2046)
enemy04.load(530, 1250)
enemy05.load(1250, 470)
clue01.load(1280, 2368)

treetop = sti("modules/Maps/treetop.lua")
end


function love.update(dt)
  map.update(dt, player.location)
  game.update(dt, player.location)
  player.update(dt)

 if game.isDungeon then
  enemy.update(dt)
  enemy01.update(dt)
  enemy02.update(dt, mainChar.x)
  enemy03.update(dt)
  enemy04.update(dt)
  enemy05.update(dt)
  player.die(dt, ghost.x, ghost.y)
  player.die(dt, ghost01.x, ghost01.y)
  player.die(dt, ghost02.x, ghost02.y)
  player.die(dt, ghost03.x, ghost03.y)
  player.die(dt, ghost04.x, ghost04.y)
  player.die(dt, ghost05.x, ghost05.y)
  clue01.update(dt)
elseif game.isVillage then
  boy01.update(dt)
  boy02.update(dt)
  girl.update(dt)
  villageChief.update(dt)
  guardian01.update(dt)
  guardian02.update(dt)
  game.interact(dt, mainChar.x, mainChar.y)
  end
  lightPower.update(mainChar.x, mainChar.y)
  camera.setPosition(mainChar.x-love.graphics.getWidth()/2, mainChar.y- love.graphics.getHeight()/2, map.sxBorder, map.dxBorder, map.downBorder, map.upBorder)
end

function love.draw()
camera.set()
love.graphics.setFont(font)
map.draw()

if game.isDungeon then
enemy.draw()
enemy01.draw()
enemy02.draw()
enemy03.draw()
enemy04.draw()
enemy05.draw()

elseif game.isVillage then
boy01.draw()
boy02.draw()
girl.draw()
villageChief.draw()
guardian01.draw()
guardian02.draw()
end

player.draw()
love.graphics.print(mainChar.x .. mainChar.y , mainChar.x, mainChar.y + 64)

if game.isLightable and lightPower.isOn then
lightPower.draw()
elseif game.isLightable and lightPower.isOn == false then
lightPower.drawDarkness(map.myMap.width*map.myMap.tilewidth, map.myMap.height*map.myMap.tileheight)


--love.graphics.printf(text, x, y, limit, align, r, sx, sy, ox, oy, kx, ky)
end
if player.location == 1 then
  treetop:draw()
end
if player.location == 0 then
  love.graphics.printf("YouSuck Counter " .. player.deathCount, 100, 600, love.graphics.getWidth(), "center")
end
if game.isTalking then
love.graphics.printf(game.dialogue(game.interact(dt, mainChar.x, mainChar.y)), mainChar.x - 320, mainChar.y + 200, love.graphics.getWidth(), "left")
end
if game.isDungeon and lightPower.isOn == false then
clue01.draw()
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
if key == "d" then
  player.location = 2
  mainChar.x = 2560 / 2 + player.size
  mainChar.y = 2560 - 100
end
end
