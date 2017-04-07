local sodapop = require "modules/sodapop"

villageChief = {}


villageChief.size = 0


function villageChief.load(x, y)
spritesheet = love.graphics.newImage("assets/Image/Characters/Sage.png")
villageChief.size = 64
villageChiefChar = sodapop.newAnimatedSprite()

villageChiefChar:addAnimation('idle', {
  image = spritesheet,
  frameWidth = villageChief.size,
  frameHeight = villageChief.size,
  frames = {
    {1, 6, 3, 6, .4}
  }
})

villageChiefChar.x, villageChiefChar.y = x, y
end

function villageChief.update(dt)
villageChiefChar:switch('idle', true)
villageChiefChar:update(dt)
end

function villageChief.draw()
villageChiefChar:draw()
end

return villageChief
