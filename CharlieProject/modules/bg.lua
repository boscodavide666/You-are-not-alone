local  bg = {}

bg.img = nil
bg.sizeX = 0
bg.sizeY = 0
bg.posX = 0
bg.posY = 0
bg.sxBorder = 0
bg.dxBorder = 0
bg.upBorder = 0
bg.downBorder = 0

startBgImg = love.graphics.newImage("assets/Image/main1.png")
startBgSizeX = startBgImg:getWidth()
startBgSizeY = startBgImg:getHeight()
startBgposX = - love.graphics.getWidth()/2
startBgposy = 0
startBgLeftBorder = -320
startBgRightBorder = startBgSizeX - love.graphics.getWidth()/2
startBgUpBorder = 0
startBgDownBorder = love.graphics.getHeight()

villageBgImg = love.graphics.newImage("assets/Image/villageBg.png")




function bg.load()
  bg.img = startBgImg
  bg.sizeX = startBgSizeX
  bg.sizeY = startBgSizeY
  bg.posX = startBgposX
  bg.posY = startBgposy
  bg.sxBorder = startBgLeftBorder
  bg.dxBorder = startBgRightBorder
  bg.upBorder = startBgUpBorder
  bg.downBorder = startBgDownBorder
end

function bg.draw()
  love.graphics.draw(bg.img, bg.posX, bg.posY, 0, 1, 1)
  --love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
end



return bg
