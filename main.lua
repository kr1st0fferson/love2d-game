function love.load()
    local anim8 = require 'libraries.anim8'
    anim8 = require 'libraries/anim8.lua'

    Player = {}
    Player.x = 400
    Player.y = 200
    Player.speed = 8
   
    --[[ added spritesheet]]
    Player.spritesheet = love.graphics.newImage('assets/sprites/knight.png')

    --[[ creating a grid ]]
    Player.grid = anim8.newGrid(32, 32, Player.spritesheet: getWidth(), Player.spritesheet: getHeight())
end

function love.update(dt)
    --[[ player movement using keyboard ]]
    if love.keyboard.isDown("left") then
        Player.x = Player.x - Player.speed

    elseif love.keyboard.isDown("right") then
        Player.x = Player.x + Player.speed

    elseif love.keyboard.isDown("up") then
        Player.y = Player.y - Player.speed

    elseif love.keyboard.isDown("down") then
        Player.y = Player.y + Player.speed
    end

    --[[ animation ]]
    Player.animations = {}
    

end

function love.draw()
    --[[ background ]]
    love.graphics.setBackgroundColor(0,0,1,1)

    
end

