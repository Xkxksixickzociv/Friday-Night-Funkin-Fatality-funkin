function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-subzero'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'riphead'); --put in mods/sounds/
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'subzero-fatality'); --put in mods/music/
end