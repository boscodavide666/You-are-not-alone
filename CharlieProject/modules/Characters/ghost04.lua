local sodapop = require "modules/sodapop"

enemy04 = {}

enemy04.sizeX = 0
enemy04.sizeY = 0
enemy04.dir = 0
enemy04.speed = 0
enemy04.canMove = nil
local timer = 0
local capTimer = 1

function enemy04.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/ghost.png")
enemy04.speed = 1
enemy04.sizeX = 40
enemy04.sizeY = 46
enemy04.dir = 0
enemy04.canMove = true
ghost04 = sodapop.newAnimatedSprite()

ghost04:addAnimation('walk-right', {
  image = spritesheet,
  frameWidth = enemy04.sizeX,
  frameHeight = enemy04.sizeY,
  frames = {
    {1, 4, 3, 4, .1}
  }
})

ghost04:addAnimation('walk-left', {
  image = spritesheet,
  frameWidth = enemy04.sizeX,
  frameHeight = enemy04.sizeY,
  frames = {
    {1, 2, 3, 2, .1}
  }
})

ghost04:addAnimation('walk-up', {
  image = spritesheet,
  frameWidth = enemy04.sizeX,
  frameHeight = enemy04.sizeY,
  frames = {
    {1, 1, 3, 1, .1}
  }
})

ghost04:addAnimation('walk-down', {
  image = spritesheet,
  frameWidth = enemy04.sizeX,
  frameHeight = enemy04.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost04:addAnimation('idle', {
  image = spritesheet,
  frameWidth = enemy04.sizeX,
  frameHeight = enemy04.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost04.x, ghost04.y = x, y
timeCap = 1
timer = timeCap
end

function enemy04.update(dt)

 nextX, nextY = ghost04.x, ghost04.y
  canMove = true

if timer <= 0 then
  direction = love.math.random(0, 5)
  timer = timeCap
elseif timer >= 0 then
    timer = timer - dt
end
enemy04.dir = direction
  if enemy04.dir == 1 then
    ghost04:switch('walk-up', true)
    nextY = nextY - enemy04.speed
  elseif enemy04.dir == 2 then
    ghost04:switch('walk-down', true)
    nextY = nextY + enemy04.speed
  elseif enemy04.dir == 3 then
    ghost04:switch('walk-left', true)
    nextX = nextX - enemy04.speed
  elseif enemy04.dir == 4 then
    ghost04:switch('walk-right', true)
    nextX = nextX + enemy04.speed
  else
    ghost04:switch('idle', true)
  end

if enemy04.canMove then
ghost04.x = nextX
ghost04.y = nextY
end

ghost04:update(dt)
end

function enemy04.draw()
ghost04:draw()
end
return enemy04