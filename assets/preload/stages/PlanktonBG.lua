function onCreate()
	makeLuaSprite('Plank', 'Plank_BG', -550, 150);
	setScrollFactor('Plank', 0.9, 0.9);
	scaleObject('Plank', 1.3, 1.3);

	makeLuaSprite('Backtable', 'Backtable_1', -75, 550);
	setScrollFactor('Backtable', 0.95, 0.95);
	scaleObject('Backtable', 1.2, 1.2);

	makeLuaSprite('Backtable2', 'Backtable_2', 750, 500);
	setScrollFactor('Backtable2', 0.92, 0.92);
	scaleObject('Backtable2', 1.2, 1.2);

	makeLuaSprite('Foretable', 'ForeTable1', -600, 675);
	setScrollFactor('Foretable', 1.05, 1.05);
	scaleObject('Foretable', 1.2, 1.2);

	makeLuaSprite('Foretable2', 'Foretable_2', 875, 750);
	setScrollFactor('Foretable2', 1.05, 1.05);
	scaleObject('Foretable2', 1.2, 1.2);

	addLuaSprite('Plank', false);
	addLuaSprite('Backtable', false);
	addLuaSprite('Backtable2', false);
	addLuaSprite('Foretable', true);
	addLuaSprite('Foretable2', true);

	setScrollFactor('dadGroup', 1.05, 1.05)
	setScrollFactor('boyfriendGroup', 1.1, 1.1)
	setObjectOrder('dadGroup', getObjectOrder('Foretable'))
	setObjectOrder('boyfriendGroup',getObjectOrder('Foretable') + 1)
end

function onMoveCamera(focus)
	if focus == 'dad' then
		doTweenZoom('camGameZD', 'camGame', 1.3, 1, 'cubeIn')
	else
		doTweenZoom('camGameZB', 'camGame', 1, 1.5, 'cubeOut')
	end
end

function onTweenCompleted(tag)
	if tag == 'camGameZD' then
		setProperty('defaultCamZoom', 1.2)
	end
	if tag == 'camGameZB' then
		setProperty('defaultCamZoom', 1)
	end
end