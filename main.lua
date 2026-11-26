function love.load()
    Player = {}
    Player.x = 400
    Player.y = 200
    Player.speed = 8
    Player.sprite = love.graphics.newImage('assets/sprites/sonic.png')
    Background = love.graphics.newImage('assets/shadow.jpg')
end

function love.update(dt)
    if love.keyboard.isDown("left") then
        Player.x = Player.x - Player.speed

    elseif love.keyboard.isDown("right") then
        Player.x = Player.x + Player.speed

    elseif love.keyboard.isDown("up") then
        Player.y = Player.y - Player.speed

    elseif love.keyboard.isDown("down") then
        Player.y = Player.y + Player.speed
    end
end

function love.draw()
    love.graphics.draw(Player.sprite, Player.x, Player.y)
end

