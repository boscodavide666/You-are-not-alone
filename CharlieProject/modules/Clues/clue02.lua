local sodapop = require "modules/sodapop"

clue02 = {}

clue02.size = 0
clue02.text = nil
clue02.isRead = nil
clue02.isOver = nil

function clue02.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/sparkle_sprite.png")
clue02.size = 64
clue02.text = "Questi mostri non mi attaccano nemmeno! Com'è possibile che abbiano sottomesso un intero viallaggio?"
clue02.isRead = false
clue02.isOver = false
clue02Sprite = sodapop.newAnimatedSprite()

clue02Sprite:addAnimation('sparkle', {
 image = spritesheet,
 frameWidth = clue02.size,
 frameHeight = clue02.size,
 frames = {
   {1, 1, 4, 1, .1}
 }
})

clue02Sprite.x, clue02Sprite.y = x, y
end

function clue02.update(dt, _x, _y)
  if (_x >= clue02Sprite.x - 20 and _x <= clue02Sprite.x + clue02.size) and (_y >= clue02Sprite.y and _y <= clue02Sprite.y + clue02.size ) then
  clue02.isOver = true
  clue02.setRead()
  else
  clue02.isOver = false
  end

clue02Sprite:switch('sparkle', true)
clue02Sprite:update(dt)
end

function clue02.setRead()
clue02.isRead = true
end

function clue02.draw(x, y)
  if clue02.isOver  then
  love.graphics.printf(clue02.text, x, y, love.graphics.getWidth(), "left")
end
clue02Sprite:draw()
end

return clue02
