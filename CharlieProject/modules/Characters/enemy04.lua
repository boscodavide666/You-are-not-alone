local sodapop = require "modules/sodapop"

enemy04 = {}

enemy04.sizeX = 0
enemy04.sizeY = 0
enemy04.dir = 0
enemy04.speed = 0
enemy04.canMove = nil
local timer = 0
local timecap = 0.5

function enemy04.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/Monsters/slime.png")
enemy04.speed = 10
enemy04.sizeX = 32
enemy04.sizeY = 32
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
timer = timecap
end

function enemy04.update(dt)
  if timer >= 0 then
    ghost04.x = ghost04.x + enemy04.speed
    timer = timer - dt
  elseif timer <= 0 then
    timer = timecap
    enemy04.speed = - enemy04.speed
  end
ghost04:switch('idle', true)

ghost04:update(dt)
end

function enemy04.draw()
ghost04:draw()
end
return enemy04
