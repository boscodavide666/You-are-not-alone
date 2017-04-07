local sodapop = require "modules/sodapop"

enemy01 = {}

enemy01.sizeX = 0
enemy01.sizeY = 0
enemy01.dir = 0
enemy01.speed = 0
enemy01.canMove = nil
local timer  = 0
local timecap = 1

function enemy01.load(x, y, x1, y1)
spritesheet = love.graphics.newImage("assets/Image/Monsters/eyeball.png")
enemy01.speed = 8
enemy01.sizeX = 32
enemy01.sizeY = 38
enemy01.dir = 0
enemy01.canMove = true
ghost01 = sodapop.newAnimatedSprite()


ghost01:addAnimation('idle', {
  image = spritesheet,
  frameWidth = enemy01.sizeX,
  frameHeight = enemy01.sizeY,
  frames = {
    {1, 3, 3, 3, .2}
  }
})

ghost01.x, ghost01.y = x, y
timer  = timecap
end

function enemy01.update(dt)
if timer >= 0 then
  ghost01.x = ghost01.x + enemy01.speed
  timer = timer - dt
elseif timer <= 0 then
  timer = timecap
  enemy01.speed = - enemy01.speed
end

ghost01:switch('idle', true)
ghost01:update(dt)
end

function enemy01.draw()
ghost01:draw()
end
return enemy01
