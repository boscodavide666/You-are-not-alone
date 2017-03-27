function love.load(arg)
--sfondi
local bg = require "modules/bg"
--giocatore
local player = require "modules/player"
--scritte
local font = require "modules/font"
end

function love.update(dt)

move()
anim(dt)

end

function love.draw()


  --disegno background
drawBg(player.location)
  --opzioni
love.graphics.setColor(255, 255, 255, 255)

  --titolo
drawText(player.location)
  --giocatore
love.graphics.draw(player.char01, player.spawnX, player.spawnY, 0, 3, 3)
  --not
drawNot(player.location)
end
