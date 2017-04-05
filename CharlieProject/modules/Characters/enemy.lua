local sodapop = require "modules/sodapop"

enemy = {}

enemy.sizeX = 0
enemy.sizeY = 0
enemy.dir = 0
local timer = 0
local capTimer = 1

function enemy.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/ghost.png")
enemy.speed = 1
enemy.sizeX = 40
enemy.sizeY = 46
enemy.dir = 0
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
timeCap = 1
timer = timeCap
end

function enemy.update(dt)

  nextX, nextY = ghost.x, ghost.y
  canMove = true

if timer <= 0 then
  direction = love.math.random(1, 4)
  timer = timeCap
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

ghost:update(dt)
end

function enemy.draw(x, y)
ghost:draw()
end
return enemy
