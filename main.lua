function love.load()
    myrectangle= {}
    myrectangle.x = 10
    myrectangle.y = 300

    myrectangle.speed = 300

    ball = {}
    ball.x = 400
    ball.y = 400
end

function love.update(dt)
   if love.keyboard.isDown("up") then
        myrectangle.y = myrectangle.y - (myrectangle.speed * dt)
   end

   if love.keyboard.isDown("down") then
        myrectangle.y = myrectangle.y + (myrectangle.speed * dt)
   end
end

function love.draw()
    love.graphics.setColor(1,0,1)
    love.graphics.rectangle("fill", myrectangle.x, myrectangle.y, 10, 90)

    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("fill", 778, 300, 10, 90)

    love.graphics.setColor(1,1,1)
    love.graphics.circle("fill", ball.x, ball.y, 10)
end