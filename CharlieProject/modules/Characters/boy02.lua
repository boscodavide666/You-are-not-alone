local sodapop = require "modules/sodapop"

boy02 = {}


boy02.size = 0


function boy02.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/Boy.png")
boy02.size = 64
boy02Char = sodapop.newAnimatedSprite()

boy02Char:addAnimation('idle', {
 image = spritesheet,
 frameWidth = boy02.size,
 frameHeight = boy02.size,
 frames = {
   {1, 6, 3, 6, .4}
 }
})

boy02Char.x, boy02Char.y = x, y
end

function boy02.update(dt)
boy02Char:switch('idle', true)
boy02Char:update(dt)
end

function boy02.draw()
boy02Char:draw()
end

return boy02
