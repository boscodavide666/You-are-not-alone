local sodapop = require "modules/sodapop"
local sti = require "modules/sti"
local map = require "modules/Maps/map"


 player = {}

player.location = 0
player.size = 0

function player.load()

  spritesheet = love.graphics.newImage("assets/Image/skeleton.png")
  speed = 8
  player.location = 0
  player.size = 64

  mainChar = sodapop.newAnimatedSprite()

  mainChar:addAnimation('walk-right', {
    image = spritesheet, -- spritesheet da cui prendere le immagini
    frameWidth = player.size,             -- larghezza di uno sprite
    frameHeight = player.size,            -- altezza di uno sprite
    frames = {                   -- definizione dei frame e della loro durata
      {2, 12, 9, 12, .1}
    }
  })
  mainChar:addAnimation('walk-left', {
    image = spritesheet,
    frameWidth = player.size,
    frameHeight = player.size,
    frames = {
      {2, 10, 9, 10, .1}
    }
  })
  mainChar:addAnimation('walk-up', {
    image = spritesheet,
    frameWidth = player.size,
    frameHeight = player.size,
    frames = {
      {2, 9, 9, 9, .1}
    }
  })
  mainChar:addAnimation('walk-down', {
    image = spritesheet,
    frameWidth = player.size,
    frameHeight = player.size,
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
      mainChar.x = nextX
      mainChar.y = nextY

    if mainChar.x > map.myMap.width * map.myMap.tilewidth then
      mainChar.x = player.size
      if player.location == 0 then

        mainChar.y = 15 * map.myMap.tileheight
      elseif player.location == -1 then
        mainChar.y = love.graphics.getHeight()/2
      end
      player.switch(1)


    elseif mainChar.x <= 0 then
      if player.location == 0 then
      mainChar.x = love.graphics.getWidth() - player.size
    elseif player.location == 1 then
      mainChar.x = 1280 - player.size
    end
      mainChar.y = love.graphics.getWidth()/2
      player.switch(-1)

  end

  end

    mainChar:update(dt)
end

function player.draw()
mainChar:draw()
end


function player.switch(int)
    love.timer.sleep(1)
    player.location = player.location + int
end

return player
