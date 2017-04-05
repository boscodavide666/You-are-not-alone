local sodapop = require "modules/sodapop"

boy01 = {}

boy01.speed = 0
boy01.size = 0
boy01.posX = 0
boy01.posY = 0

function boy01.load()
spritesheet = love.graphics.newImage("/assets/Image/Boy.png")
boy01.speed = 1
boy01.size = 64
boy01.posX = 384
boy01.posY = 956
boy01Char = sodapop.newAnimatedSprite()

boy01Char:addAnimation('idle', {
  image = spritesheet,
  frameWidth = boy01.size,
  frameHeight = boy01.size,
  frames = {
    {1, 6, 3, 6, .4}
  }
})

boy01Char.x, boy01Char.y = boy01.posX, boy01.posY
end

function boy01.update(dt)
boy01Char:switch('idle', true)
boy01Char:update(dt)
end

function boy01.draw()
boy01Char:draw()
end

return boy01
