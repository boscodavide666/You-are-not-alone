local guardian01 = require "modules/Characters/guardian01"
local guardian02 = require "modules/Characters/guardian02"

game = {}

game.isLightable = nil
game.isDungeon = nil
game.isVillage = nil
game.isSpeaking = nil
game.isEnd = nil
game.canGo = nil
game.isEnd = nil


function game.load()
game.isLightable = true
game.isEnd = false
game.isDungeon = false
game.isVillage = false
game.isSpeaking = false
game.canGo = false
game.isEnd = false
end

function game.update(dt, int)
if int == 1 then
  game.isLightable = false
  game.isVillage = true
  game.isDungeon = false
elseif int == 2 then
  game.isLightable = true
  game.isDungeon = true
  game.isVillage = false
elseif int == 0 then
  game.isLightable = true
  game.isDungeon = false
  game.isVillage = false
else
  game.isLightable = true
end
end

function game.interact(dt, x1, y1)
if game.isVillage then
    if (x1 >= 360 and x1 <= 420) and (y1 >= 930 and y1 <= 980 ) then
    game.isTalking =true
    return 1
elseif (x1 >= 1550 and x1 <= 1580) and (y1 >= 1400 and y1 <= 1430 ) then
    game.isTalking =true
    game.setCanGo()
    return 2
elseif (x1 >= 1260 and x1 <= 1272) and (y1 >= 1270 and y1 <= 1310) then
      game.isTalking =true
    return 3
elseif (x1 >= 1320 and x1 <= 1340) and (y1 >= 860 and y1 <= 900 ) then
        game.isTalking =true
      return 4
elseif (x1 >= 890 and x1 <= 980) and (y1 >= 50 and y1 <= 75 )  and game.canGo == false then
      game.isTalking =true
      return 5
elseif (x1 >= 890 and x1 <= 980) and (y1 >= 50 and y1 <= 75 ) and game.canGo == true then
      game.isTalking =true
      return 6
    else
    game.isTalking = false
  end
end

end

function game.dialogue(int)
local dialogues = {"Evviva il guerriero della luce e' arrivato!!\nVai a parlare con il capovillaggio ti sta aspettando!", "Benvenuto nel nostro villaggio guerriero della luce!\nLa situazione e' sempre piu' drammatica per colpa di quei dannati mostri che infestano la caverna a nord!\nOgni notte mietono nuove vittime!\nTi prego aiutaci!",
"La mia famiglia sta facendo i bagagli per scappare!\nAiutaci!","Sarebbe un villaggio cosi' bello se non fosse per i mostri", "Prima di entrare nel dungeon parla con il capovillaggio!", "Buona fortuna avventuriero!"}

return dialogues[int]
end

function game.setCanGo()
game.canGo = true
guardian01Char.x = 880
guardian02Char.x = 980
end


return game
