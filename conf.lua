function love.conf(t)
    t.window.title = "ping pong game"
    t.window.width = 800
    t.window.height = 600
    t.window.resizable = false
    t.modules.joystick = false --love2d said to write this so that execution is faster
    t.window.fullscreen = false
end