function onEvent(name, value1, value2)
   if name == 'border' then
    makeLuaSprite('image', value1, 0, 0);
    addLuaSprite('image', true);
    doTweenColor('hello', 'image', 'FFFFFFFF', 0.1, 'quartIn');
    setObjectCamera('image', 'other');
    scaleObject('image', 0.78, 0.6);
    runTimer('wait', value2);
    
    end
	end 
    
    function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
    doTweenAlpha('byebye', 'image', 1, 0.1, '');
    end
    end
    
    function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('image', true);
    end
	end