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

startBgImg = love.graphics.newImage("assets/Image/mainbg2.png")
startBgSizeX = startBgImg:getWidth()
startBgSizeY = startBgImg:getHeight()
startBgposX = - love.graphics.getWidth()/2
startBgposy = 0
startBgLeftBorder = -320
startBgRightBorder = startBgSizeX - love.graphics.getWidth()/2
startBgUpBorder = 0
startBgDownBorder = love.graphics.getHeight()

function bg.loadMainBg()
  bg.img = startBgImg
  bg.sizeX = startBgSizeX
  bg.sizeY = startBgSizeY
  bg.posX = startBgposX
  bg.posY = startBgposy
  bg.sxBorder = startBgLeftBorder
  bg.dxBorder = startBgRightBorder
  bg.upBorder = startBgUpBorder
  bg.downBorder = startBgDownBorder
  bg.sxCamBorder = startBgLeftBorder
  bg.dxCamBorder = 640/2
  bg.upCamBorder = startBgUpBorder
  bg.downCamBorder = startBgDownBorder
end

villageBgImg = love.graphics.newImage("assets/Image/villageBg.png")
villageBgSizeX = villageBgImg:getWidth()
villageBgSizeY = villageBgImg:getHeight()
villageBgposX = 0
villageBgposy = 0
villageBgLeftBorder = 0
villageBgRightBorder = love.graphics.getWidth()
villageBgUpBorder = 0
villageBgDownBorder = love.graphics.getHeight()

function loadVillageBg()
  bg.img = villageBgImg
  bg.sizeX = villageBgSizeX
  bg.sizeY = villageBgSizeY
  bg.posX = villageBgposX
  bg.posY = villageBgposy
  bg.sxBorder = villageBgLeftBorder
  bg.dxBorder = villageBgRightBorder
  bg.upBorder = villageBgUpBorder
  bg.downBorder = villageBgDownBorder
  bg.sxCamBorder = 0
  bg.dxCamBorder = 0
  bg.upCamBorder = 0
  bg.downCamBorder = 640
end

exitBgImg = love.graphics.newImage("assets/Image/exitbg.png")
exitBgSizeX = exitBgImg:getWidth()
exitBgSizeY = exitBgImg:getHeight()
exitBgposX = 0
exitBgposy = 0
exitBgLeftBorder = 0
exitBgRightBorder = love.graphics.getWidth()
exitBgUpBorder = 0
exitBgDownBorder = love.graphics.getHeight()

function loadExitBg()
  bg.img = exitBgImg
  bg.sizeX = exitBgSizeX
  bg.sizeY = exitBgSizeY
  bg.posX = exitBgposX
  bg.posY = exitBgposy
  bg.sxBorder = exitBgLeftBorder
  bg.dxBorder = exitBgRightBorder
  bg.upBorder = exitBgUpBorder
  bg.downBorder = exitBgDownBorder
  bg.sxCamBorder = 0
  bg.dxCamBorder = 0
  bg.upCamBorder = 0
  bg.downCamBorder = 640
end


function bg.selectBg(int)
  if int == 0 then
    bg.loadMainBg()
  elseif int == 1 then
    loadVillageBg()
  elseif int == -1 then
    loadExitBg()
  else

  end


end

function bg.draw()
  love.graphics.draw(bg.img, bg.posX, bg.posY, 0, 1, 1)
  --love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
end



return bg
