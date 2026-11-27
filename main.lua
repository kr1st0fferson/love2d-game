function love.load()
    myrectangle= {}
    myrectangle.x = 10
    myrectangle.y = 300
    myrectangle.width = 10
    myrectangle.height = 90

    myrectangle.speed = 300

    ball = {}
    ball.x = 400
    ball.y = 400
    ball.width = 10
    ball.height = 10
end

function love.update(dt)
   if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
        myrectangle.y = myrectangle.y - (myrectangle.speed * dt)
   end

   if love.keyboard.isDown("down") or love.keyboard.isDown("s") then
        myrectangle.y = myrectangle.y + (myrectangle.speed * dt)
   end
end

function love.draw()
    love.graphics.setColor(1,0,1)
    love.graphics.rectangle("fill", myrectangle.x, myrectangle.y, myrectangle.width, myrectangle.height)

    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("fill", 778, 300, 10, 90)

    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("fill", ball.x, ball.y, ball.width, ball.height)
end

function checkCollision(myrectangle, ball)
    local myrectangle_left = myrectangle.x
    local myrectangle_right = myrectangle.x + myrectangle.width
    local myrectangle_top = myrectangle.y + myrectangle.height
    local myrectangle_bottom = myrectangle.y

    local ball_left = ball.x
    local ball_right = ball.x + ball.width
    local ball_bottom = ball.y 
    local ball_top = ball.y + ball.height

end