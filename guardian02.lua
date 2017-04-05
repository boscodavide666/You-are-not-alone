local sodapop = require "modules/sodapop"

guardian02 = {}

guardian02.speed = 0
guardian02.size = 0
guardian02.posX = 0
guardian02.posY = 0

function guardian02.load()
spritesheet = love.graphics.newImage("/assets/Image/Guardian02.png")
guardian02.speed = 1
guardian02.size = 64
guardian02.posX = 384
guardian02.posY = 956
guardian02Char = sodapop.newAnimatedSprite()

guardian02Char:addAnimation('idle', {
 image = spritesheet,
 frameWidth = guardian02.size,
 frameHeight = guardian02.size,
 frames = {
   {1, 6, 3, 6, .4}
 }
})

guardian02Char.x, guardian02Char.y = guardian02.posX, guardian02.posY
end

function guardian02.update(dt)
guardian02Char:switch('idle', true)
guardian02Char:update(dt)
end

function guardian02.draw()
guardian02Char:draw()
end

return guardian02
