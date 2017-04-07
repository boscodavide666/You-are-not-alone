local sodapop = require "modules/sodapop"

clue04 = {}

clue04.size = 0
clue04.text = nil
clue04.isRead = nil
clue04.isOver =nil

function clue04.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/sparkle_sprite.png")
clue04.size = 64
clue04.text = "Dove saranno i corpi degli avventurieri che hanno perso la vita qui dentro?"
clue04.isRead = false
clue04.isOver = false
clue04Sprite = sodapop.newAnimatedSprite()

clue04Sprite:addAnimation('sparkle', {
 image = spritesheet,
 frameWidth = clue04.size,
 frameHeight = clue04.size,
 frames = {
   {1, 1, 4, 1, .1}
 }
})

clue04Sprite.x, clue04Sprite.y = x, y
end

function clue04.update(dt, _x, _y)
  if (_x >= clue04Sprite.x - 20 and _x <= clue04Sprite.x + clue04.size) and (_y >= clue04Sprite.y and _y <= clue04Sprite.y + clue04.size ) then
  clue04.isOver = true
  clue04.setRead()
  else
  clue04.isOver = false
  end

clue04Sprite:switch('sparkle', true)
clue04Sprite:update(dt)
end

function clue04.setRead()
clue04.isRead = true
end

function clue04.draw(x, y)
  if clue04.isOver == true then
    love.graphics.printf(clue04.text, x, y, love.graphics.getWidth(), "left")
  end
clue04Sprite:draw()
end

return clue04
