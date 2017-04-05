local sodapop = require "modules/sodapop"

guardian02 = {}


guardian02.size = 0


function guardian02.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/Guardian.png")

guardian02.size = 64
guardian02Char = sodapop.newAnimatedSprite()

guardian02Char:addAnimation('idle', {
 image = spritesheet,
 frameWidth = guardian02.size,
 frameHeight = guardian02.size,
 frames = {
   {1, 11, 6, 11, .4}
 }
})

guardian02Char.x, guardian02Char.y = x, y
end

function guardian02.update(dt)
guardian02Char:switch('idle', true)
guardian02Char:update(dt)
end

function guardian02.draw()
guardian02Char:draw()
end

return guardian02
