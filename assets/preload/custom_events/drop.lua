function onEvent(tag, loops, loopsLeft)
	if name == 'drop' then
		makeLuaSprite('blackscreen', 'blackscreen', 0, 0);
		setObjectCamera('blackscreen', 'hud');
		addLuaSprite('blackscreen', true);
		runTimer('appear', 0.4, 1);
		runTimer('fadeout', 0.4, 5);
	elseif tag == 'appear' then
		doTweenX('texttween', 'sexo', 1, 1, 'linear');
	elseif tag == 'fadeout' then
		doTweenAlpha('blackfade', 'blackscreen', 0, 1, 'linear');
	end
end