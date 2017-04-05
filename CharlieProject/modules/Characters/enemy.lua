local sodapop = require "modules/sodapop"

enemy = {}

enemy.sizeX = 0
enemy.sizeY = 0
enemy.dir = 0
enemy.speed = 0
enemy.canMove = nil
local timer = 0
local timecap = 0.6

function enemy.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/ghost.png")
enemy.speed = 8
enemy.sizeX = 40
enemy.sizeY = 46
enemy.dir = 0
enemy.canMove = true
ghost = sodapop.newAnimatedSprite()

ghost:addAnimation('walk-right', {
  image = spritesheet,
  frameWidth = enemy.sizeX,
  frameHeight = enemy.sizeY,
  frames = {
    {1, 4, 3, 4, .1}
  }
})

ghost:addAnimation('walk-left', {
  image = spritesheet,
  frameWidth = enemy.sizeX,
  frameHeight = enemy.sizeY,
  frames = {
    {1, 2, 3, 2, .1}
  }
})

ghost:addAnimation('walk-up', {
  image = spritesheet,
  frameWidth = enemy.sizeX,
  frameHeight = enemy.sizeY,
  frames = {
    {1, 1, 3, 1, .1}
  }
})

ghost:addAnimation('walk-down', {
  image = spritesheet,
  frameWidth = enemy.sizeX,
  frameHeight = enemy.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost:addAnimation('idle', {
  image = spritesheet,
  frameWidth = enemy.sizeX,
  frameHeight = enemy.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost.x, ghost.y = x, y
timer = timecap
end

function enemy.update(dt)

  nextX, nextY = ghost.x, ghost.y
  canMove = true

if timer <= 0 then
  direction = love.math.random(1, 5)
  timer = timecap
elseif timer >= 0 then
    timer = timer - dt
end
enemy.dir = direction
  if enemy.dir == 1 then
    ghost:switch('walk-up', true)
    nextY = nextY - enemy.speed
  elseif enemy.dir == 2 then
    ghost:switch('walk-down', true)
    nextY = nextY + enemy.speed
  elseif enemy.dir == 3 then
    ghost:switch('walk-left', true)
    nextX = nextX - enemy.speed
  elseif enemy.dir == 4 then
    ghost:switch('walk-right', true)
    nextX = nextX + enemy.speed
  else
    ghost:switch('idle', true)
  end

  for k, object in pairs(map.myMap.objects) do
if object.properties["Impassable"] == true then
  if ( nextX >= object.x  and
    nextX < object.x + object.width and
      nextY >= object.y  and
      nextY < object.y + object.height  ) then

        enemy.speed = - enemy.speed
        break

  end
end
end
if enemy.canMove then
ghost.x = nextX
ghost.y = nextY
end

ghost:update(dt)
end

function enemy.draw()
ghost:draw()
end
return enemy
