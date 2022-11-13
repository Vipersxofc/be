function onCreatePost()
	if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	    makeLuaSprite('logo', 'logo', 1000, 570);
    elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
	    makeLuaSprite('logo', 'logo', 1000, -5);
    end
	addLuaSprite('logo', true);
	setObjectCamera('logo', 'hud');
	scaleLuaSprite('logo', 0.3, 0.3);
end