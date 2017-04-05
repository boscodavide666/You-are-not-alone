local sodapop = require "modules/sodapop"

enemy03 = {}

enemy03.sizeX = 0
enemy03.sizeY = 0
enemy03.dir = 0
enemy03.speed = 0
enemy03.canMove = nil
local timer = 0
local timecap = 0.5

function enemy03.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/ghost.png")
enemy03.speed = 10
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
timer = timecap
end

function enemy03.update(dt)
  if timer >= 0 then
    ghost03.y = ghost03.y + enemy03.speed
    timer = timer - dt
  elseif timer <= 0 then
    timer = timecap
    enemy03.speed = - enemy03.speed
  end

ghost03:switch('walk-right', true)
ghost03:update(dt)
end

function enemy03.draw()
ghost03:draw()
end
return enemy03
