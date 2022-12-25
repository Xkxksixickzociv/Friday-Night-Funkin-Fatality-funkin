-- Lua stuff
function onCreate()
	makeLuaSprite('pitback', 'pitback', -1050, -500)
	addLuaSprite('pitback',  false);
        setLuaSpriteScrollFactor('pitback', 0.4, 0.4);

        makeLuaSprite('piteffect', 'piteffect', -1050, -500)
	addLuaSprite('piteffect',  true);

        makeLuaSprite('pitfront', 'pitfront', -1050, -500) 
	addLuaSprite('pitfront',  false)
end

