local sodapop = require "modules/sodapop"

villageChief = {}


villageChief.size = 0
villageChief.posX = 0
villageChief.posY = 0

function villageChief.load()
spritesheet = love.graphics.newImage("assets/Image/Sage.png")
villageChief.size = 64
villageChief.posX = 1568
villageChief.posY = 1184
villageChiefChar = sodapop.newAnimatedSprite()

villageChiefChar:addAnimation('idle', {
  image = spritesheet,
  frameWidth = villageChief.size,
  frameHeight = villageChief.size,
  frames = {
    {1, 6, 3, 6, .4}
  }
})

villageChiefChar.x, villageChiefChar.y = villageChief.posX, villageChief.posY
end

function villageChief.update(dt)
villageChiefChar:switch('idle', true)
villageChiefChar:update(dt)
end

function villageChief.draw()
villageChiefChar:draw()
end

return villageChief
