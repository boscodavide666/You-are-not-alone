lightPower = {}

lightPower.img = nil
lightPower.isOn = nil
lightPower.posX = 0
lightPower.posY = 0
lightPower.Ox = 0
lightPower.Oy = 0

lightPower.darknes = {}

lightPower.darknes.r = 0
lightPower.darknes.g = 0
lightPower.darknes.b = 0
lightPower.darknes.a = 255


function lightPower.load(x, y)
  lightPower.img = love.graphics.newImage("Assets/Image/maskn.png")
  lightPower.isOn = false
  lightPower.posX = x
  lightPower.posY = y
  lightPower.Ox = 1280
  lightPower.Oy = 1250
end

function lightPower.update(x, y)
  lightPower.posX = x
  lightPower.posY = y
end

function lightPower.drawDarkness(x, y)
  love.graphics.setColor(lightPower.darknes.r, lightPower.darknes.g, lightPower.darknes.b, lightPower.darknes.a)
love.graphics.rectangle("fill", 0, 0, x, y)
end

function lightPower.draw()
love.graphics.draw(lightPower.img, mainChar.x, mainChar.y, 0, 1, 1, lightPower.Ox, lightPower.Oy)
end

return lightPower
