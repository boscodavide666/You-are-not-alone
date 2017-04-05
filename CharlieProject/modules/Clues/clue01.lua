local sodapop = require "modules/sodapop"

clue01 = {}

clue01.size = 0
clue01.text = nil

function clue01.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/sparkle_sprite.png")
clue01.size = 64
clue01.text = "Questi mostri sembrano molto deboli, strano che abbiano soggiogato un intero villaggio"
clue01Sprite = sodapop.newAnimatedSprite()

clue01Sprite:addAnimation('sparkle', {
 image = spritesheet,
 frameWidth = clue01.size,
 frameHeight = clue01.size,
 frames = {
   {1, 1, 4, 1, .1}
 }
})

clue01Sprite.x, clue01Sprite.y = x, y
end

function clue01.update(dt)
clue01Sprite:switch('sparkle', true)
clue01Sprite:update(dt)
end

function clue01.draw()
clue01Sprite:draw()
end

return clue01
