function love.load()
    local anim8 = require 'libraries.anim8'

    --[[ making the pixels sharper ]]
    love.graphics.setDefaultFilter("nearest")

    Player = {}
    Player.x = 400
    Player.y = 200
    Player.speed = 8
   
    --[[ added spritesheet]]
    Player.spritesheet = love.graphics.newImage('assets/sprites/knight.png')

    --[[ created grid ]]
    Player.grid = anim8.newGrid(32, 32, Player.spritesheet: getWidth(), Player.spritesheet: getHeight())

    Player.animations = {}
    Player.animations.idle = anim8.newAnimation(Player.grid('1-4', 1), 0.2)

    Player.animations.run = anim8.newAnimation(Player.grid('1-8', '3-4'), 0.1)
end

function love.update(dt)

    --[[ player movement using keyboard ]]
    if love.keyboard.isDown("left") then
        Player.animations.run: update(dt)
        Player.x = Player.x - Player.speed

    elseif love.keyboard.isDown("right") then
        Player.animations.run: update(dt)
        Player.x = Player.x + Player.speed

    elseif love.keyboard.isDown("up") then
        Player.animations.run: update(dt)
        Player.y = Player.y - Player.speed

    elseif love.keyboard.isDown("down") then
        Player.animations.run: update(dt)
        Player.y = Player.y + Player.speed
       
    end

end

function love.draw()
    --[[ background ]]
    love.graphics.setBackgroundColor(0,0,1,1)

   
    Player.animations.run: draw(Player.spritesheet, Player.x, Player.y, nil, 5)
end

