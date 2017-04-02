game = {}

game.isLightable = nil
game.isDungeon = nil

function game.load()
game.isLightable = true
end

function game.update(dt, int)
if int == 1 then
  game.isLightable = false

else
  game.isLightable = true
end
end

return game
