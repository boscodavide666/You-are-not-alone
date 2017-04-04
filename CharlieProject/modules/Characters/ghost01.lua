local sodapop = require "modules/sodapop"

enemy01 = {}

enemy01.sizeX = 0
enemy01.sizeY = 0
enemy01.dir = 0
enemy01.speed = 0
enemy01.canMove = nil
local timer = 0
local capTimer = 1

function enemy01.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/ghost.png")
enemy01.speed = 1
enemy01.sizeX = 40
enemy01.sizeY = 46
enemy01.dir = 0
enemy01.canMove = true
ghost01 = sodapop.newAnimatedSprite()

ghost01:addAnimation('walk-right', {
  image = spritesheet,
  frameWidth = enemy01.sizeX,
  frameHeight = enemy01.sizeY,
  frames = {
    {1, 4, 3, 4, .1}
  }
})

ghost01:addAnimation('walk-left', {
  image = spritesheet,
  frameWidth = enemy01.sizeX,
  frameHeight = enemy01.sizeY,
  frames = {
    {1, 2, 3, 2, .1}
  }
})

ghost01:addAnimation('walk-up', {
  image = spritesheet,
  frameWidth = enemy01.sizeX,
  frameHeight = enemy01.sizeY,
  frames = {
    {1, 1, 3, 1, .1}
  }
})

ghost01:addAnimation('walk-down', {
  image = spritesheet,
  frameWidth = enemy01.sizeX,
  frameHeight = enemy01.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost01:addAnimation('idle', {
  image = spritesheet,
  frameWidth = enemy01.sizeX,
  frameHeight = enemy01.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost01.x, ghost01.y = x, y
timeCap = 1
timer = timeCap
end

function enemy01.update(dt)

 nextX, nextY = ghost01.x, ghost01.y
  canMove = true

if timer <= 0 then
  direction = love.math.random(0, 5)
  timer = timeCap
elseif timer >= 0 then
    timer = timer - dt
end
enemy01.dir = direction
  if enemy01.dir == 1 then
    ghost01:switch('walk-up', true)
    nextY = nextY - enemy01.speed
  elseif enemy01.dir == 2 then
    ghost01:switch('walk-down', true)
    nextY = nextY + enemy01.speed
  elseif enemy01.dir == 3 then
    ghost01:switch('walk-left', true)
    nextX = nextX - enemy01.speed
  elseif enemy01.dir == 4 then
    ghost01:switch('walk-right', true)
    nextX = nextX + enemy01.speed
  else
    ghost01:switch('idle', true)
  end

if enemy01.canMove then
ghost01.x = nextX
ghost01.y = nextY
end

ghost01:update(dt)
end

function enemy01.draw()
ghost01:draw()
end
return enemy01