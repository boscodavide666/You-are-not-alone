local sodapop = require "modules/sodapop"

clue05 = {}

clue05.size = 0
clue05.text = nil
clue05.isRead = nil
clue05.isOver = nil

function clue05.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/sparkle_sprite.png")
clue05.size = 64
clue05.text = "Sembra tutto incredibilmente finto!"
clue05.isRead = false
clue05.isOver = false
clue05Sprite = sodapop.newAnimatedSprite()

clue05Sprite:addAnimation('sparkle', {
 image = spritesheet,
 frameWidth = clue05.size,
 frameHeight = clue05.size,
 frames = {
   {1, 1, 4, 1, .1}
 }
})

clue05Sprite.x, clue05Sprite.y = x, y
end

function clue05.update(dt, _x, _y)
  if (_x >= clue05Sprite.x - 20 and _x <= clue05Sprite.x + clue05.size) and (_y >= clue05Sprite.y and _y <= clue05Sprite.y + clue05.size ) then
  clue05.isOver = true
  clue05.setRead()
  else
  clue05.isOver = false
  end

clue05Sprite:switch('sparkle', true)
clue05Sprite:update(dt)
end

function clue05.setRead()
clue05.isRead = true
end

function clue05.draw(x, y)
  if clue05.isOver == true then
    love.graphics.printf(clue05.text, x - 320, y + 100, love.graphics.getWidth(), "left")
  end
clue05Sprite:draw()
end

return clue05
