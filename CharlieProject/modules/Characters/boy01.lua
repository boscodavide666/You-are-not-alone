local sodapop = require "modules/sodapop"

boy01 = {}


boy01.size = 0


function boy01.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/Characters/Boy.png")

boy01.size = 64
boy01Char = sodapop.newAnimatedSprite()

boy01Char:addAnimation('idle', {
  image = spritesheet,
  frameWidth = boy01.size,
  frameHeight = boy01.size,
  frames = {
    {1, 6, 3, 6, .4}
  }
})

boy01Char.x, boy01Char.y = x, y
end

function boy01.update(dt)
boy01Char:switch('idle', true)
boy01Char:update(dt)
end

function boy01.draw()
boy01Char:draw()
end

return boy01
