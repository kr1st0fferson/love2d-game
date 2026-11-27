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

   if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
        myrectangle.x = myrectangle.x - (myrectangle.speed * dt)
   end

   if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
        myrectangle.x = myrectangle.x + (myrectangle.speed * dt)
   end
end

function love.draw()
    love.graphics.setColor(1,0,1)
    love.graphics.rectangle("fill", myrectangle.x, myrectangle.y, myrectangle.width, myrectangle.height)

    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("fill", 778, 300, 10, 90)

    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("fill", ball.x, ball.y, ball.width, ball.height)

    if checkCollision(myrectangle, ball) then
        print("collision detected")
    else 
        print("collision not detected")
    end
end

function checkCollision(a, b)
    local a_left = a.x
    local a_right = a.x + a.width
    local a_top = a.y + a.height
    local a_bottom = a.y

    local b_left = b.x
    local b_right = b.x + b.width
    local b_bottom = b.y 
    local b_top = b.y + b.height

    if a_right > b_left
    and a_left < b_right
    and a_bottom > b_top
    and a_top < b_bottom then
        return true
    else 
        return false
    end
end


