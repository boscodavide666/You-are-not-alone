local sodapop = require "modules/sodapop"

girl02 = {}


girl02.size = 0


function girl02.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/Girl.png")

girl02.size = 64
girl02Char = sodapop.newAnimatedSprite()

girl02Char:addAnimation('idle', {
 image = spritesheet,
 frameWidth = girl02.size,
 frameHeight = girl02.size,
 frames = {
   {1, 11, 6, 11, .2}
 }
})

girl02Char.x, girl02Char.y = x, y
end

function girl02.update(dt)
girl02Char:switch('idle', true)
girl02Char:update(dt)
end

function girl02.draw()
girl02Char:draw()
end

return girl02
