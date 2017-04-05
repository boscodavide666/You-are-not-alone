local sodapop = require "modules/sodapop"

guardian01 = {}

guardian01.speed = 0
guardian01.size = 0
guardian01.posX = 0
guardian01.posY = 0

function guardian01.load()
spritesheet = love.graphics.newImage("/assets/Image/Guardian01.png")
guardian01.speed = 1
guardian01.size = 64
guardian01.posX = 384
guardian01.posY = 956
guardian01Char = sodapop.newAnimatedSprite()

guardian01Char:addAnimation('idle', {
 image = spritesheet,
 frameWidth = guardian01.size,
 frameHeight = guardian01.size,
 frames = {
   {1, 6, 3, 6, .4}
 }
})

guardian01Char.x, guardian01Char.y = guardian01.posX, guardian01.posY
end

function guardian01.update(dt)
guardian01Char:switch('idle', true)
guardian01Char:update(dt)
end

function guardian01.draw()
guardian01Char:draw()
end

return guardian01
