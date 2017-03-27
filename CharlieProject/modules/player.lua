--personaggio
player = {
  --sprite
  char01 = love.graphics.newImage("assets/Character/statico1.png"),
  char02 = love.graphics.newImage("assets/Character/statico2.png"),
  char = char01,
  size = 48,
  --punto di spawn
  spawnX = love.graphics.getWidth()/2,
  spawnY = love.graphics.getHeight()/2,

  location = 1,
  vel = 0,
  walk = 10,
  run = 5,
  --util animazione
  timer = 0,
  staticAnim = 0.3,
}

move = function()
  if love.keyboard.isDown("up") then
    player.spawnY = player.spawnY - player.walk
  elseif love.keyboard.isDown("down") then
    player.spawnY = player.spawnY + player.walk
  end
  if love.keyboard.isDown("left") then
    player.spawnX = player.spawnX - player.walk
  elseif love.keyboard.isDown("right") then
    player.spawnX = player.spawnX + player.walk
  end

  if player.spawnX > love.graphics.getWidth() + player.size then
    player.location = player.location + 1
    player.spawnX = 0
  elseif player.spawnX <= -player.size then
    player.location = player.location -1
    player.spawnX = love.graphics.getWidth()-10

  end

  if player.spawnY < 0 and (player.location == 1 or player.location == 0 ) then
    player.spawnY = 0
  elseif player.spawnY > love.graphics.getHeight() - player.size and player.location ~= 1 then
    player.spawnY = love.graphics.getHeight() - player.size
  elseif player.spawnY > love.graphics.getHeight() - player.size and player.location == 1 then
    player.location = 3
    player.spawnY = 1
  elseif player.spawnY < 0 - player.size and player.location == 3 then
    player.location = 1
    player.spawnY = love.graphics.getHeight() - player.size
  end
end

function anim(int)
  player.timer = player.timer + int

  if player.timer > player.staticAnim then
    if player.char == player.char01 then
      player.char = player.char02
    else
      player.char = player.char01
    end
    player.timer = 0
  end
end
