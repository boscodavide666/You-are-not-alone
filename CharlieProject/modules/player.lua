local player = {}

player.img = nil
player.posX = 0
player.posy = 0
player.width = 0
player.height = 0
player.vel = 0
player.location = 0

function player.load()
player.img = love.graphics.newImage("assets/Character/statico1.png")
player.posX = love.graphics.getWidth()/2
player.posY = love.graphics.getHeight()/2
player.vel = 10
end




return player
