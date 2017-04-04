local sodapop = require "modules/sodapop"

enemy03 = {}

enemy03.sizeX = 0
enemy03.sizeY = 0
enemy03.dir = 0
enemy03.speed = 0
enemy03.canMove = nil
local timer = 0
local capTimer = 1

function enemy03.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/ghost.png")
enemy03.speed = 1
enemy03.sizeX = 40
enemy03.sizeY = 46
enemy03.dir = 0
enemy03.canMove = true
ghost03 = sodapop.newAnimatedSprite()

ghost03:addAnimation('walk-right', {
  image = spritesheet,
  frameWidth = enemy03.sizeX,
  frameHeight = enemy03.sizeY,
  frames = {
    {1, 4, 3, 4, .1}
  }
})

ghost03:addAnimation('walk-left', {
  image = spritesheet,
  frameWidth = enemy03.sizeX,
  frameHeight = enemy03.sizeY,
  frames = {
    {1, 2, 3, 2, .1}
  }
})

ghost03:addAnimation('walk-up', {
  image = spritesheet,
  frameWidth = enemy03.sizeX,
  frameHeight = enemy03.sizeY,
  frames = {
    {1, 1, 3, 1, .1}
  }
})

ghost03:addAnimation('walk-down', {
  image = spritesheet,
  frameWidth = enemy03.sizeX,
  frameHeight = enemy03.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost03:addAnimation('idle', {
  image = spritesheet,
  frameWidth = enemy03.sizeX,
  frameHeight = enemy03.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost03.x, ghost03.y = x, y
timeCap = 1
timer = timeCap
end

function enemy03.update(dt)

 nextX, nextY = ghost03.x, ghost03.y
  canMove = true

if timer <= 0 then
  direction = love.math.random(0, 5)
  timer = timeCap
elseif timer >= 0 then
    timer = timer - dt
end
enemy03.dir = direction
  if enemy03.dir == 1 then
    ghost03:switch('walk-up', true)
    nextY = nextY - enemy03.speed
  elseif enemy03.dir == 2 then
    ghost03:switch('walk-down', true)
    nextY = nextY + enemy03.speed
  elseif enemy03.dir == 3 then
    ghost03:switch('walk-left', true)
    nextX = nextX - enemy03.speed
  elseif enemy03.dir == 4 then
    ghost03:switch('walk-right', true)
    nextX = nextX + enemy03.speed
  else
    ghost03:switch('idle', true)
  end

if enemy03.canMove then
ghost03.x = nextX
ghost03.y = nextY
end

ghost03:update(dt)
end

function enemy03.draw()
ghost03:draw()
end
return enemy03