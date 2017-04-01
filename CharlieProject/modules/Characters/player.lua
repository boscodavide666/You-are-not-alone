local sodapop = require "modules/sodapop"
local sti = require "modules/sti"
local map = require "modules/Maps/map"


 player = {}

player.location = 0

function player.load()

  spritesheet = love.graphics.newImage("assets/Image/skeleton.png")
  speed = 10
  player.location = 0

  mainChar = sodapop.newAnimatedSprite()

  mainChar:addAnimation('walk-right', {
    image = spritesheet, -- spritesheet da cui prendere le immagini
    frameWidth = 64,             -- larghezza di uno sprite
    frameHeight = 64,            -- altezza di uno sprite
    frames = {                   -- definizione dei frame e della loro durata
      {2, 12, 9, 12, .1}
    }
  })
  mainChar:addAnimation('walk-left', {
    image = spritesheet,
    frameWidth = 64,
    frameHeight = 64,
    frames = {
      {2, 10, 9, 10, .1}
    }
  })
  mainChar:addAnimation('walk-up', {
    image = spritesheet,
    frameWidth = 64,
    frameHeight = 64,
    frames = {
      {2, 9, 9, 9, .1}
    }
  })
  mainChar:addAnimation('walk-down', {
    image = spritesheet,
    frameWidth = 64,
    frameHeight = 64,
    frames = {
      {2, 11, 9, 11, .1}
    }
  })

  mainChar.x, mainChar.y = (map.myMap.width * map.myMap.tilewidth)/2, (map.myMap.height * map.myMap.tileheight)/2
end

function player.update(dt)
  nextX, nextY = mainChar.x, mainChar.y
  canMove = true

    if(love.keyboard.isDown("up")) then
      mainChar:switch('walk-up', true)
      nextY = nextY - speed
    elseif (love.keyboard.isDown("down")) then
      mainChar:switch('walk-down', true)
      nextY = nextY + speed
    elseif (love.keyboard.isDown("left")) then
      mainChar:switch('walk-left', true)
      nextX = nextX - speed
    elseif (love.keyboard.isDown("right")) then
      mainChar:switch('walk-right', true)
      nextX = nextX + speed
    else
      mainChar:goToFrame(8)
    end

        for k, object in pairs(map.myMap.objects) do
      if object.properties["Impassable"] == true then
      --Imp = true
        if ( nextX >= object.x  and
          nextX < object.x + object.width and
            nextY >= object.y  and
             nextY < object.y + object.height  ) then
          canMove = false
          break
        end
      end
    end

    if canMove then
      speed = 10
      mainChar.x = nextX
      mainChar.y = nextY

    if mainChar.x > map.myMap.width * map.myMap.tilewidth then
      mainChar.x = 0 + 64
      mainChar.y = love.graphics.getWidth()/2
      player.switch(1)

    elseif mainChar.x <= 0 then
      mainChar.x = 640 - 64
      mainChar.y = love.graphics.getWidth()/2
      player.switch(-1)
  end

  end

    mainChar:update(dt)
end

function player.switch(int)
    love.timer.sleep(1)
    player.location = player.location + int
end


function player.draw()
mainChar:draw()
if Imp then
  love.graphics.print("Impassable")
end
end

return player
