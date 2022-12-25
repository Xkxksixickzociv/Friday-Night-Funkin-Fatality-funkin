function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-scorpion'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fire'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'scorpion-fatality'); --put in mods/music/
end