local camera = {}
camera.x = 0
camera.y = 0
camera.scaleX = 1
camera.scaleY = 1
camera.rotation = 0

function camera.set()
  love.graphics.push()
  love.graphics.rotate(-camera.rotation)
  love.graphics.scale(1 / camera.scaleX, 1 / camera.scaleY)
  love.graphics.translate(-camera.x, -camera.y)
end

function camera.unset()
  love.graphics.pop()
end


function camera.setPosition(x, y, x1, x2, y1, y2)
  camera.x = x
  camera.y = y

  if camera.x <= x1 then
    camera.x = x1
  elseif camera.x > x2 then
    camera.x = x2
  end

  if camera.y >= y1 then
    camera.y = y1
  elseif camera.y <= y2 then
    camera.y = 0
  end
end


return camera
