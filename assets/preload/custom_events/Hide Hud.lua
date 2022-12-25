function onEvent(name, value1, value2)
    if name == "Hide Hud" then
            local hideme = tonumber(value1)
            doTweenAlpha('fnowaithudTween','camHUD', 1 - hideme, 0.3, 'linear') 
    end
end