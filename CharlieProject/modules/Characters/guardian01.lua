local sodapop = require "modules/sodapop"

guardian01 = {}


guardian01.size = 0


function guardian01.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/Characters/Guardian.png")

guardian01.size = 64
guardian01Char = sodapop.newAnimatedSprite()

guardian01Char:addAnimation('idle', {
 image = spritesheet,
 frameWidth = guardian01.size,
 frameHeight = guardian01.size,
 frames = {
   {1, 11, 6, 11, .4}
 }
})

guardian01Char.x, guardian01Char.y = x, y
end

function guardian01.update(dt)
guardian01Char:switch('idle', true)
guardian01Char:update(dt)
end

function guardian01.draw()
guardian01Char:draw()
end

return guardian01
