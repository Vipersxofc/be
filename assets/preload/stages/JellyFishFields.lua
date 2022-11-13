function onCreate()
	makeLuaSprite('BACKHILLS', 'BACKHILLS', -240, 170);
	setScrollFactor('BACKHILLS', 0.6, 0.6);

	makeLuaSprite('FRONTHILLS', 'FRONTHILLS', -400, 300);
	setScrollFactor('FRONTHILLS', 1.0, 1.0);

	makeLuaSprite('SKYBG', 'SKYBG', -500, -300);
	setScrollFactor('SKYBG', 0.3, 0.3);

	addLuaSprite('SKYBG', false);
	addLuaSprite('BACKHILLS', false);
    addLuaSprite('FRONTHILLS', false);
end