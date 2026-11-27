function love.load()
    myrectangle= {}
    myrectangle.x = 10
    myrectangle.y = 300

end

function love.update(dt)

end

function love.draw()
    love.graphics.setColor(1,1,1)
    myrectangle= love.graphics.rectangle("fill", myrectangle.x, myrectangle.y, 10, 90)

    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("fill", 778, 300, 10, 90)
end