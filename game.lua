
function game_load()
    intro:setVolume(0.5)
    loop:setVolume(0.5)
    cowbell:setVolume(1)
    intro:play()
    loop:setLooping(true)
    require "metronome"
end

function game_update(dt)
    if(intro:tell() == 0 and not intro:isPlaying())
    then
        loop:play()
    end
    nextBeat = nextTick(150,loop:tell(),0)
    if(loop:tell()*1000 >= nextBeat and nextBeat ~= oldBeat)
    then 
        cowbell:play() 
        oldBeat = nextBeat
    end
end

function game_draw()
    love.graphics.print(nextBeat,0,0)
    love.graphics.print(loop:tell()*1000,0,100)
end