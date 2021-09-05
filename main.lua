
function love.load()
    require "game"
    intro = love.audio.newSource("resources/sounds/intro.ogg", "stream")
    loop = love.audio.newSource("resources/sounds/loop.ogg", "stream")
    cowbell = love.audio.newSource("resources/sounds/cowbell.ogg", "stream")
    game_load()
end

function love.update(dt)
    game_update(dt)
end

function love.draw()
    game_draw()
end