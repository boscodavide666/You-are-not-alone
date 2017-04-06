local sodapop = require "modules/sodapop"

girl02 = {}

girl02.speed = 0
girl02.size = 0
girl02.posX = 0
girl02.posY = 0

function girl02.load()
spritesheet = love.graphics.newImage("/assets/Image/Girl02.png")
girl02.speed = 1
girl02.size = 64
girl02.posX = 384
girl02.posY = 956
girl02Char = sodapop.newAnimatedSprite()

girl02Char:addAnimation('idle', {
 image = spritesheet,
 frameWidth = girl02.size,
 frameHeight = girl02.size,
 frames = {
   {1, 6, 3, 6, .4}
 }
})

girl02Char.x, girl02Char.y = girl02.posX, girl02.posY
end

function girl02.update(dt)
girl02Char:switch('idle', true)
girl02Char:update(dt)
end

function girl02.draw()
girl02Char:draw()
end

return girl02
