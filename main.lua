function love.load()
    player = {}
    player.x = 400
    player.y = 200
    player.speed = 8
    player.sprite = love.graphics.newImage('assets/sprites/sonic.png')
end

function love.update(dt)
    if love.keyboard.isDown("left") then
        player.x = player.x - player.speed

    elseif love.keyboard.isDown("right") then
        player.x = player.x + player.speed

    elseif love.keyboard.isDown("up") then
        player.y = player.y - player.speed

    elseif love.keyboard.isDown("down") then
        player.y = player.y + player.speed
    end
end

function love.draw()
    love.graphics.draw(player.sprite, player.x, player.y)
end

