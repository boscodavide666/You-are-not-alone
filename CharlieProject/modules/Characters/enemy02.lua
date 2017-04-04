local sodapop = require "modules/sodapop"

enemy02 = {}

enemy02.sizeX = 0
enemy02.sizeY = 0
enemy02.dir = 0
enemy02.speed = 0
enemy02.canMove = nil
local timer = 0
local capTimer = 1

function enemy02.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/ghost.png")
enemy02.speed = 1
enemy02.sizeX = 40
enemy02.sizeY = 46
enemy02.dir = 0
enemy02.canMove = true
ghost02 = sodapop.newAnimatedSprite()

ghost02:addAnimation('walk-right', {
  image = spritesheet,
  frameWidth = enemy02.sizeX,
  frameHeight = enemy02.sizeY,
  frames = {
    {1, 4, 3, 4, .1}
  }
})

ghost02:addAnimation('walk-left', {
  image = spritesheet,
  frameWidth = enemy02.sizeX,
  frameHeight = enemy02.sizeY,
  frames = {
    {1, 2, 3, 2, .1}
  }
})

ghost02:addAnimation('walk-up', {
  image = spritesheet,
  frameWidth = enemy02.sizeX,
  frameHeight = enemy02.sizeY,
  frames = {
    {1, 1, 3, 1, .1}
  }
})

ghost02:addAnimation('walk-down', {
  image = spritesheet,
  frameWidth = enemy02.sizeX,
  frameHeight = enemy02.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost02:addAnimation('idle', {
  image = spritesheet,
  frameWidth = enemy02.sizeX,
  frameHeight = enemy02.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost02.x, ghost02.y = x, y
timeCap = 1
timer = timeCap
end

function enemy02.update(dt)

 nextX, nextY = ghost02.x, ghost02.y
  canMove = true

if timer <= 0 then
  direction = love.math.random(0, 5)
  timer = timeCap
elseif timer >= 0 then
    timer = timer - dt
end
enemy02.dir = direction
  if enemy02.dir == 1 then
    ghost02:switch('walk-up', true)
    nextY = nextY - enemy02.speed
  elseif enemy02.dir == 2 then
    ghost02:switch('walk-down', true)
    nextY = nextY + enemy02.speed
  elseif enemy02.dir == 3 then
    ghost02:switch('walk-left', true)
    nextX = nextX - enemy02.speed
  elseif enemy02.dir == 4 then
    ghost02:switch('walk-right', true)
    nextX = nextX + enemy02.speed
  else
    ghost02:switch('idle', true)
  end

if enemy02.canMove then
ghost02.x = nextX
ghost02.y = nextY
end

ghost02:update(dt)
end

function enemy02.draw()
ghost02:draw()
end
return enemy02
