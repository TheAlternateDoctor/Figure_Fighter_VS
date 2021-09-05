function nextTick(bpm, position, offset)
    step = 60*1000/bpm
    nextBeat = math.floor(position*1000/step)*step
    return nextBeat
end