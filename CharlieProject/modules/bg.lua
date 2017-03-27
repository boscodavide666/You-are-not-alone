--background SCHERMATA INIZIALE che fondamentalmente è un quadratone nero formato da una tabella con i colori e le dimensioni
--di fatto inutile però mi sento megio ad averlo

mainBg = {
  r = 0,
  g = 0,
  b = 0,
  a = 255,
  sizeX = love.graphics.getWidth(),
  sizey = love.graphics.getHeight()
}

villageBg = {
  r = 100,
  g = 0,
  b = 0,
  a = 255,
  sizeX = love.graphics.getWidth(),
  sizey = love.graphics.getHeight()

}

quitBg = {
  r = 0,
  g = 0,
  b = 100,
  a = 255,
  sizeX = love.graphics.getWidth(),
  sizey = love.graphics.getHeight()

}

optionBg ={
  r = 0,
  g = 100,
  b = 0,
  a = 255,
  sizeX = love.graphics.getWidth(),
  sizey = love.graphics.getHeight()
}

function drawBg(int)
  if int == 1 then
    drawMainBg()
  elseif int == 2 then
    drawVillageBg()
  elseif int == 0 then
    drawQuitBg()
  elseif int == 3 then
    drawOptionBg()

  end
end

function drawMainBg()
  love.graphics.setColor(mainBg.r, mainBg.g, mainBg.b, mainBg.a)
  love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
end

function drawVillageBg()
  love.graphics.setColor(villageBg.r, villageBg.g, villageBg.b, villageBg.a)
  love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
end

function drawQuitBg()
  love.graphics.setColor(quitBg.r, quitBg.g, quitBg.b, quitBg.a)
  love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
end

function drawOptionBg()
  love.graphics.setColor(optionBg.r, optionBg.g, optionBg.b, optionBg.a)
  love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
end
