function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-mileena'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'transform'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'mileena-babality'); --put in mods/music/
end