local sti = require "modules/sti"

map = {}
map.tempMap = nil
map.myMap = nil
map.sxBorder = 0
map.dxBorder = 0
map.upBorder = 0
map.downBorder = 0

function map.load()

  map.myMap = sti("modules/Maps/main.lua")
  map.sxBorder = 0
  map.dxBorder = map.myMap.width * map.myMap.tilewidth - love.graphics.getWidth()
  map.upBorder = 0
  map.downBorder = map.myMap.height * map.myMap.tilewidth - love.graphics.getHeight()

end


function map.update(dt, int)
  if int == 0 then
     map.tempMap = sti("modules/Maps/main.lua")
  elseif int == 1 then
    map.tempMap = sti("modules/Maps/map01.lua")
  elseif int == -1 then
    map.tempMap = sti("modules/Maps/mapExit.lua")
  end
  map.myMap = map.tempMap
  map.sxBorder = 0
  map.dxBorder = map.myMap.width * map.myMap.tilewidth - love.graphics.getWidth()
  map.upBorder = 0
  map.downBorder = map.myMap.height * map.myMap.tilewidth - love.graphics.getHeight()
map.myMap:update(dt)
end

function map.draw()
map.myMap:draw()
end

return map
