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
spritesheet = love.graphics.newImage("assets/Image/Monsters/big_worm.png")
enemy02.speed = 1
enemy02.sizeX = 35
enemy02.sizeY = 50
enemy02.dir = 0
enemy02.canMove = true
ghost02 = sodapop.newAnimatedSprite()

ghost02:addAnimation('walk-right', {
  image = spritesheet,
  frameWidth = enemy02.sizeX,
  frameHeight = enemy02.sizeY,
  frames = {
    {1, 4, 3, 4, .3}
  }
})

ghost02:addAnimation('walk-left', {
  image = spritesheet,
  frameWidth = enemy02.sizeX,
  frameHeight = enemy02.sizeY,
  frames = {
    {1, 2, 3, 2, .3}
  }
})



ghost02.x, ghost02.y = x, y
timeCap = 1
timer = timeCap
end

function enemy02.update(dt, x)
  if x > ghost02.x then
ghost02:switch('walk-right', true)
else
  ghost02:switch('walk-left', true)
end

ghost02:update(dt)
end

function enemy02.draw()
ghost02:draw()
end
return enemy02
