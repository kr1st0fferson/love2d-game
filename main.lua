function love.load()
    Player = {}
    Player.x = 400
    Player.y = 200
    Player.speed = 8
   
    Player.spritesheet = love.graphics.newImage('assets/sprites/knight.png')
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
    love.graphics.setBackgroundColor(0,0,1,1)
    love.graphics.draw(Player.sprite, Player.x, Player.y)
    
end

