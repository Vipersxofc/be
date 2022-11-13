function onStartCountdown()
    setProperty("skipCountdown", true)
    return Function_Continue
end

function onCreatePost()
    if isStoryMode then
        triggerEvent('Camera Follow Pos', 650, 380)
        makeLuaSprite('blackScreen', nil, 0, 0)
        makeGraphic('blackScreen', screenWidth, screenHeight, '000000')
        setObjectCamera('blackScreen', 'hud')
        addLuaSprite('blackScreen')
    end
end

function onSongStart()
    if isStoryMode then
        setProperty('camGame.zoom', 1.4)
        runTimer('fuck', 1)
    end
end

function onTimerCompleted(tag)
    if isStoryMode then
        if tag == 'fuck' then
            doTweenZoom('zz', 'camGame', 1, 10, 'linear')
            doTweenAlpha('bb', 'blackScreen', 0, 4, 'linear')
            doTweenY('cc', 'camFollow', 550, 10, 'linear')
        end
    end
end

function onStepHit()
    if isStoryMode then
        if curStep == 128 then
            triggerEvent('Camera Follow Pos', '', '')
        end
    end
end