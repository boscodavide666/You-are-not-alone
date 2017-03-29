local player = {}

player.img = nil
player.size = 0
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


function player.move(x1, x2, y1, y2)
if love.keyboard.isDown("right") then
  player.posX = player.posX + player.vel
elseif love.keyboard.isDown("left") then
  player.posX = player.posX - player.vel
end
if love.keyboard.isDown("up") then
  player.posY = player.posY - player.vel
elseif love.keyboard.isDown("down") then
  player.posY = player.posY + player.vel
end

if player.posX <= x2 + player.size then
player.posX = x2 + player.size
elseif player.posX > x1 - player.size then
  player.posX = x1 - player.size

end
if player.posY >= y2 - player.size then
player.posY = y2 - player.size
elseif player.posY < y1 + player.size then
player.posY = y1 + player.size
end

end


function player.load()
player.img = playerAnimation.img01
player.size = playerAnimation.img01:getWidth()
player.posX = love.graphics.getWidth()/2
player.posY = love.graphics.getHeight()/2
player.vel = 10
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
