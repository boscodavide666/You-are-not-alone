local transition = {
}

transition.img = nil
transition.size = 0
transition.posX = 0
transition.posY = 0
transition.scale = 0

circleTransitionImg = love.graphics.newImage("assets/circularTransition4.png")
circleTransitionSize = circleTransitionImg:getWidth()
circleTransitionPosX = 0
circleTransitionPosY = 0
circleTransitionScale = 3

function transition.load()
  transition.img = circleTransitionImg
  transition.size = circleTransitionSize
  transition.posX = circleTransitionPosX
  transition.posY = circleTransitionPosY
  transition.scale = circleTransitionScale
end


function transition.update(dt)
for i = transition.scale, 0, - dt do

--love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
  end
end

function transition.draw()
  love.graphics.draw(circleTransitionImg, circleTransitionPosX, circleTransitionPosY, 0, scale, scale)
end


return transition
