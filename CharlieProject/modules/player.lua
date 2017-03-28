local player = {}

player.img = nil
player.posX = 0
player.posy = 0
player.width = 0
player.height = 0
player.vel = 0
player.location = 0

player.timer = 0
player.frameDuration = 0.4

playerAnimation =  {
  img01 = love.graphics.newImage("assets/Character/statico1.png"),
  img02 = love.graphics.newImage("assets/Character/statico2.png")
}

function player.load()
player.img = playerAnimation.img01
player.posX = love.graphics.getWidth()/2
player.posY = love.graphics.getHeight()/2
player.vel = 5
end

function player.animation(int)
player.timer = player.timer + int

if (player.timer >= player.frameDuration) then
  if (player.img == playerAnimation.img01) then
    player.img = playerAnimation.img02
  else
    player.img = playerAnimation.img01
  end
  player.timer = 0
end
end


return player
