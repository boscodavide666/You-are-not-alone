local bg = {}

bg.startBg = love.graphics.newImage("assets/Image/black_ground.png")
bg.posX = -190
bg.posY = 0
bg.sizeX = bg.startBg:getWidth()
bg.sizeY = bg.startBg:getHeight()
bg.maxLeft = -800
bg.maxRight = 400


function bg.move(vel, location, player)
  if location == 0 then
    moveStartBg(vel, player)
  else
    moveOtherBg(vel)
  end
end

local function moveStartBg(vel, player)

  if love.keyboard.isDown("left") then
    bg.posX = bg.posX + vel
  elseif love.keyboard.isDown("right") then
    bg.posX = bg.posX - vel
  end

  if bg.posX <= bg.maxLeft then
    bg.posX = bg.maxLeft
  elseif bg.posX >= bg.maxRight then
  bg.posX = bg.maxRight
  end

end

local function moveOtherBg(vel)
  if love.keyboard.isDown("left") then
    bg.posX = bg.posX + vel
  elseif love.keyboard.isDown("right") then
    bg.posX = bg.posX - vel
  end
  if love.keyboard.isDown("up") then
    bg.posY = bg.posY + vel
  elseif love.keyboard.isDown("down") then
    bg.posY = bg.posY - vel
  end
end

return bg
