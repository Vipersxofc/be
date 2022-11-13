function onCreate()
    local toughness = checkDifficulty()

    if songName == 'Soaked Up' or songName == 'Friends' or songName == 'Perfection' then
        toughness = 'HARD'
    else
        toughness = checkDifficulty()
    end

	makeLuaSprite('bgThing', 'songBG', -500, 250)
    scaleObject('bgThing', 0.35, 0.43)
	setObjectCamera('bgThing', 'hud')
    addLuaSprite('bgThing', true)
    setScrollFactor('bgThing', 0, 0)
    setProperty('bgThing.alpha', tonumber(0.7))

    makeLuaText('songText', "".. songName.. " - ".. toughness, 400, getProperty('bgThing.x') + 40, 320)
    setObjectCamera("songText", 'hud');
    setTextColor('songText', '0xffffff')
    setTextSize('songText', 30);
    addLuaText("songText");
    setTextFont('songText', "vcr.ttf")
    setTextAlignment('songText', 'left')

    setGraphicSize('bgThing', getProperty('songText.width') + 50, getProperty('bgThing.height'))

    makeLuaText('beforeSongText', "Now Playing... ", 300, getProperty('bgThing.x') + 20 - 40, 280)
    setObjectCamera("beforeSongText", 'hud');
    setTextColor('beforeSongText', '0xffffff')
    setTextSize('beforeSongText', 25);
    addLuaText("beforeSongText");
    setTextFont('beforeSongText', "vcr.ttf")
    setTextAlignment('beforeSongText', 'left')

    setObjectOrder('beforeSongText', 3)
    setObjectOrder('songText', 3)
    setObjectOrder('bgThing', 2)
end

function onSongStart()
    doTweenX('bgThingMoveIn', 'bgThing', -50, 0.6, 'cubeOut')
    doTweenX('bgThingText', 'songText', 40, 0.7, 'cubeOut')  -- might need to mess with these for longer names
    doTweenX('bgThingTextBleb', 'beforeSongText', 20, 0.65, 'cubeOut')  -- might need to mess with these for longer names
    runTimer('moveOut', 3.7, 1)
end

function onUpdate()
    --lol
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'moveOut' then
        doTweenX('bgThingLeave', 'bgThing', -700, 0.6, 'cubeIn')
        doTweenX('bgThingLeaveText', 'songText', -700 + 40, 0.6, 'cubeIn')  -- might need to mess with these for longer names
        doTweenX('bgThingLeavePreText', 'beforeSongText', -700 + 20, 0.6, 'cubeIn') -- might need to mess with these for longer names
    end
end

function onTweenCompleted(tag)
    if tag == 'bgThingLeave' then
        removeLuaSprite('bgThing', true)
        removeLuaText('songText', true)
        removeLuaText('beforeSongText', true)
    end
end

function checkDifficulty()
    -- not needed really, but cool
    if difficulty == 2 then
        return 'EASY';
    elseif difficulty == 1 then
        return 'NORMAL';
    else
        return 'HARD';
    end
end