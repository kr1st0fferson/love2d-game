function love.load()
    local anim8 = require 'libraries.anim8'

    --[[ making the pixels sharper ]]
    love.graphics.setDefaultFilter("nearest")

    Player = {}
    Player.x = 400
    Player.y = 200
    Player.speed = 8
   
    --[[ added spritesheet]]
    player.idle = love.graphics.newImage('assets/sprites/16x16 Idle-Sheet.png')
    player.run = love.graphics.newImage('assets/sprites/16x16 Run-Sheet.png')

    --[[ created grid ]]
    player.grid = anim8.newGrid(32, 32, Player.spritesheet: getWidth(), Player.spritesheet: getHeight())

    --[[ creates an empty animation table ]]
    player.animations = {}

    player.animations.idle = anim8.newAnimation(Player.grid('1-4', 1), 0.2)
    player.animations.run = anim8.newAnimation(Player.grid('1-8', '3-4'), 0.1)

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
        playanim = player.animations.run
        playanim: update(dt)
        player.x = player.x - player.speed
    
    --[[ knight moving right ]]
    elseif love.keyboard.isDown("right") then
        knightmoving = true
        
        playanim = player.animations.run
        playanim: update(dt)
        player.x = player.x + player.speed
        
    --[[ knight moving up ]]
    elseif love.keyboard.isDown("up") then
        knightmoving = true
        playanim = player.animations.run
        playanim: update(dt)
        player.y = player.y - player.speed
      
    --[[ knight moving down ]]
    elseif love.keyboard.isDown("down") then
        knightmoving = true
        playanim = player.animations.run
        playanim: update(dt)
        player.y = player.y + player.speed
    end

end

function love.draw()
    --[[ background ]]
    love.graphics.setBackgroundColor(0,0,1,1)

    playanim: draw(player.spritesheet, player.x, player.y, nil, 5)
end

