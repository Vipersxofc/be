function onCreate()
	makeLuaSprite('BackPat', 'BackPat', -530, -550);
	setScrollFactor('BackPat', 0.9, 0.9);

	makeLuaSprite('FrontPat', 'FrontPat', -500, 0);
	setScrollFactor('FrontPat', 1.0, 1.0);

	addLuaSprite('BackPat', false);
    addLuaSprite('FrontPat', false);
end