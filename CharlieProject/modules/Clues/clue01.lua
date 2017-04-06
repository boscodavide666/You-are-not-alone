local sodapop = require "modules/sodapop"

clue01 = {}

clue01.size = 0
clue01.text = nil
clue01.isRead = nil
clue01.isOver = nil

function clue01.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/sparkle_sprite.png")
clue01.size = 64
clue01.text = "Cosa sorvegliano le guardie se ogni notte i mostri escono e ammazzano qualcuno?"
clue01.isRead = false
clue01.isOver = false
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

function clue01.update(dt, _x, _y)
if (_x >= clue01Sprite.x - 20 and _x <= clue01Sprite.x + clue01.size) and (_y >= clue01Sprite.y and _y <= clue01Sprite.y + clue01.size ) then
clue01.isOver = true
clue01.setRead()
else
clue01.isOver = false
end

clue01Sprite:switch('sparkle', true)
clue01Sprite:update(dt)
end

function clue01.setRead()
clue01.isRead = true
end

function clue01.draw(x, y)
clue01Sprite:draw()
if clue01.isOver == true then
  love.graphics.printf(clue01.text, x - 320, y + 100, love.graphics.getWidth(), "left")
end
end

return clue01
