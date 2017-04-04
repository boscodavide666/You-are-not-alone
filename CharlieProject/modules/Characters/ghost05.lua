local sodapop = require "modules/sodapop"

enemy05 = {}

enemy05.sizeX = 0
enemy05.sizeY = 0
enemy05.dir = 0
enemy05.speed = 0
enemy05.canMove = nil
local timer = 0
local capTimer = 1

function enemy05.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/ghost.png")
enemy05.speed = 1
enemy05.sizeX = 40
enemy05.sizeY = 46
enemy05.dir = 0
enemy05.canMove = true
ghost05 = sodapop.newAnimatedSprite()

ghost05:addAnimation('walk-right', {
  image = spritesheet,
  frameWidth = enemy05.sizeX,
  frameHeight = enemy05.sizeY,
  frames = {
    {1, 4, 3, 4, .1}
  }
})

ghost05:addAnimation('walk-left', {
  image = spritesheet,
  frameWidth = enemy05.sizeX,
  frameHeight = enemy05.sizeY,
  frames = {
    {1, 2, 3, 2, .1}
  }
})

ghost05:addAnimation('walk-up', {
  image = spritesheet,
  frameWidth = enemy05.sizeX,
  frameHeight = enemy05.sizeY,
  frames = {
    {1, 1, 3, 1, .1}
  }
})

ghost05:addAnimation('walk-down', {
  image = spritesheet,
  frameWidth = enemy05.sizeX,
  frameHeight = enemy05.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost05:addAnimation('idle', {
  image = spritesheet,
  frameWidth = enemy05.sizeX,
  frameHeight = enemy05.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost05.x, ghost05.y = x, y
timeCap = 1
timer = timeCap
end

function enemy05.update(dt)

 nextX, nextY = ghost05.x, ghost05.y
  canMove = true

if timer <= 0 then
  direction = love.math.random(0, 5)
  timer = timeCap
elseif timer >= 0 then
    timer = timer - dt
end
enemy05.dir = direction
  if enemy05.dir == 1 then
    ghost05:switch('walk-up', true)
    nextY = nextY - enemy05.speed
  elseif enemy05.dir == 2 then
    ghost05:switch('walk-down', true)
    nextY = nextY + enemy05.speed
  elseif enemy05.dir == 3 then
    ghost05:switch('walk-left', true)
    nextX = nextX - enemy05.speed
  elseif enemy05.dir == 4 then
    ghost05:switch('walk-right', true)
    nextX = nextX + enemy05.speed
  else
    ghost05:switch('idle', true)
  end

if enemy05.canMove then
ghost05.x = nextX
ghost05.y = nextY
end

ghost05:update(dt)
end

function enemy05.draw()
ghost05:draw()
end
return enemy05