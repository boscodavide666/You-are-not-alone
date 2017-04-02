lightPower = {}

lightPower.img = nil
lightPower.isOn = nil
lightPower.posX = 0
lightPower.posY = 0
lightPower.Ox = 0
lightPower.Oy = 0

function lightPower.load(x, y)
  lightPower.img = love.graphics.newImage("Assets/Image/maskn.png")
  lightPower.isOn = true
  lightPower.posX = x
  lightPower.posY = y
  lightPower.Ox = 1280
  lightPower.Oy = 1250
end

function lightPower.update(x, y)
  lightPower.posX = x
  lightPower.posY = y
end

function lightPower.draw()
love.graphics.draw(lightPower.img, mainChar.x, mainChar.y, 0, 1, 1, lightPower.Ox, lightPower.Oy)
end

return lightPower
