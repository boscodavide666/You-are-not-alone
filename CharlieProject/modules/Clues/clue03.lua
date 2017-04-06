local sodapop = require "modules/sodapop"

clue03 = {}

clue03.size = 0
clue03.text = nil
clue03.isRead = nil
clue03.isOver = nil

function clue03.load(x, y)
spritesheet = love.graphics.newImage("/assets/Image/sparkle_sprite.png")
clue03.size = 64
clue03.text = "Questo sotterraneo è chiaramente opera dell'uomo, e non è nemmeno molto vecchio..."
clue03.isRead = false
clue03.isOver = false
clue03Sprite = sodapop.newAnimatedSprite()

clue03Sprite:addAnimation('sparkle', {
 image = spritesheet,
 frameWidth = clue03.size,
 frameHeight = clue03.size,
 frames = {
   {1, 1, 4, 1, .1}
 }
})

clue03Sprite.x, clue03Sprite.y = x, y
end

function clue03.update(dt, _x, _y)
  if (_x >= clue03Sprite.x - 20 and _x <= clue03Sprite.x + clue03.size) and (_y >= clue03Sprite.y and _y <= clue03Sprite.y + clue03.size ) then
  clue03.isOver = true
  clue03.setRead()
  else
  clue03.isOver = false
  end

clue03Sprite:switch('sparkle', true)
clue03Sprite:update(dt)
end

function clue03.setRead()
clue03.isRead = true
end

function clue03.draw(x, y)
  if clue03.isOver == true then
    love.graphics.printf(clue03.text, x - 320, y + 100, love.graphics.getWidth(), "left")
  end
clue03Sprite:draw()
end

return clue03
