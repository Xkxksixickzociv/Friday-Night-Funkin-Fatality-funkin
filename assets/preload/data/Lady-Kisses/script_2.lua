local allowCountdown = false

function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0.01);
		allowCountdown = true;
		startCountdown();
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		makeLuaSprite('blackscreen', 'blackscreen', 0, 0);
		setObjectCamera('blackscreen', 'hud');
		addLuaSprite('blackscreen', true);
		runTimer('appear', 0.4, 1);
		runTimer('fadeout', 0.4, 1);
	elseif tag == 'appear' then
		doTweenX('texttween', 'text', 0, 0.5, 'linear');
	elseif tag == 'fadeout' then
		doTweenAlpha('blackfade', 'blackscreen', 0, 1, 'linear');
	end
end