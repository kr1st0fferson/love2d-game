function love.load()
    win_height = 600
    win_width = 800

    player1= {}
    player1.x = 10
    player1.y = 300
    player1.width = 10
    player1.height = 90

    player1.speed = 300

    ball = {}
    ball.x = 400
    ball.y = 400
    ball.width = 10
    ball.height = 10
    ball.dx = 10
    ball.dy = 10
    ball.speed = 30
end

function love.update(dt)
   if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
        player1.y = player1.y - (player1.speed * dt)
   end

   if love.keyboard.isDown("down") or love.keyboard.isDown("s") then
        player1.y = player1.y + (player1.speed * dt)
   end

   if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
        player1.x = player1.x - (player1.speed * dt)
   end

   if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
        player1.x = player1.x + (player1.speed * dt)
   end

   ball.x = ball.x + ball.dx * ball.speed * dt
   ball.y = ball.y + ball.dy * ball.speed * dt

   if ball.y < 0 then
        ball.y = 0
        ball.dy = -ball.dy --[[ flips in the vertical direction ]]
   elseif ball.y + ball.width + ball.height > win_height then 
        ball.y = win_height - (ball.width + ball.height)
        ball.dy = -ball.dy
   end
end

function love.draw()
    love.graphics.setColor(1,0,1)
    love.graphics.rectangle("fill", player1.x, player1.y, player1.width, player1.height)

    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("fill", 778, 300, 10, 90)

    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("fill", ball.x, ball.y, ball.width, ball.height)

    if checkCollision(player1, ball) then
        love.graphics.print("collision detected", 100, 100)
    else 
        love.graphics.print("collision not detected", 100, 100)
    end
end

function checkCollision(a, b)
    local a_left = a.x
    local a_right = a.x + a.width
    local a_top = a.y
    local a_bottom = a.y + a.height

    local b_left = b.x
    local b_right = b.x + b.width
    local b_bottom = b.y + b.height
    local b_top = b.y 

    return  a_right > b_left
        and a_left < b_right
        and a_bottom > b_top
        and a_top < b_bottom
end