function onCreate()
	makeLuaSprite('Squidwall', 'Squidwall', -400, -500);
	setScrollFactor('Squidwall', 1.0, 1.0);
	scaleObject('Squidwall', 1.1, 1.1);

	makeLuaSprite('Squidfloor', 'Squidfloor', -500, 650);
	setScrollFactor('Squidfloor', 1.0, 1.0);

	makeLuaSprite('Furniture', 'Furniture', 0, 300);
	setScrollFactor('Furniture', 1.0, 1.0);

	addLuaSprite('Squidwall', false);
    addLuaSprite('Squidfloor', false);
    addLuaSprite('Furniture', false);
end