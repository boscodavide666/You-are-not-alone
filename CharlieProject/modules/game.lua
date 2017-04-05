game = {}

game.isLightable = nil
game.isDungeon = nil
game.isVillage = nil
game.isSpeaking = nil
game.isEnd = nil

function game.load()
game.isLightable = true
game.isEnd = false
game.isDungeon = false
game.isVillage = false
game.isSpeaking = false
end

function game.update(dt, int)
if int == 1 then
  game.isLightable = false
  game.isVillage = true
elseif int == 2 then
  game.isLightable = true
  game.isDungeon = true
elseif int == 0 then
  game.isLightable = true
  game.isDungeon = false
else
  game.isLightable = true
end
end

function game.interact(dt, x1, y1)
if game.isVillage then
    if (x1 >= 360 and x1 <= 420) and (y1 >= 930 and y1 <= 980 ) then
    game.isTalking =true
elseif (x1 >= 1540 and x1 <= 1580) and (y1 >= 1150 and y1 <= 1200 ) then
    game.isTalking =true
  else
    game.isTalking = false
  end
  end

end

function game.dialog(int)
love.graphics.setFont()
end


function game.talkBox(posX, posY, width, height)
love.graphics.rectangle("fill", posX, posY, width, height)
end

return game
