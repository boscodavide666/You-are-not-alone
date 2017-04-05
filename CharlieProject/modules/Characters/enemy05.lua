local sodapop = require "modules/sodapop"

enemy05 = {}

enemy05.sizeX = 0
enemy05.sizeY = 0
enemy05.dir = 0
enemy05.speed = 0
enemy05.canMove = nil
local timer = 0
local timecap = 3

function enemy05.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/ghost.png")
enemy05.speed = 20
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

timer = timecap
end

function enemy05.update(dt)

  if timer >= 0 then
    ghost05.x = ghost05.x + enemy05.speed
    timer = timer - dt
  elseif timer <= 0 then
    timer = timecap
    enemy05.speed = - enemy05.speed
  end

ghost05:switch('idle', true)
ghost05:update(dt)
end

function enemy05.draw()
ghost05:draw()
end
return enemy05
