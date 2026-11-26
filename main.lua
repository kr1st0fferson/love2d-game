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

    --[[ creates an empty animation table ]]
    Player.animations = {}
    
    Player.animations.idle = anim8.newAnimation(Player.grid('1-4', 1), 0.2)
    Player.animations.run = anim8.newAnimation(Player.grid('1-8', '3-4'), 0.1)

    playanim = Player.animations.idle
    
end

function love.update(dt)
    local knightmoving = false

    if knightmoving == false then
        playanim = Player.animations.idle
        playanim: update(dt)
    end

    --[[ knight moving left ]]
    if love.keyboard.isDown("left") then
        knightmoving = true
        playanim = Player.animations.run
        playanim: update(dt)
        Player.x = Player.x - Player.speed
    
    --[[ knight moving right ]]
    elseif love.keyboard.isDown("right") then
        knightmoving = true
        playanim = Player.animations.run
        playanim: update(dt)
        Player.x = Player.x + Player.speed
        
    --[[ knight moving up ]]
    elseif love.keyboard.isDown("up") then
        knightmoving = true
        playanim = Player.animations.run
        playanim: update(dt)
        Player.y = Player.y - Player.speed
      
    --[[ knight moving down ]]
    elseif love.keyboard.isDown("down") then
        knightmoving = true
        playanim = Player.animations.run
        playanim: update(dt)
        Player.y = Player.y + Player.speed
    end

end

function love.draw()
    --[[ background ]]
    love.graphics.setBackgroundColor(0,0,1,1)

    playanim: draw(Player.spritesheet, Player.x, Player.y, nil, 5)
end

