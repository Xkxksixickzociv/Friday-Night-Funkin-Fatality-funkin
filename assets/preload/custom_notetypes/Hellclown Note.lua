function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Hellclown Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Hellclown Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'mechanics/paleta_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'offsetX', -120); --Changes the offset X
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	--Check if the note is a Hellclown Note
	if noteType == 'Hellclown Note' then
		playSound('burnSound', 1);
		setProperty('health', getProperty('health') - 0.3); --Harm the player if hit
        end
 
        if tag == 'Died' == false then
                setPropertyFromClass('GameOverSubstate', 'characterName', 'PersonajeConMuerte'); --Character json file para la animacion de muerte
                setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Effecto de muerte'); --este efecto de muerte cuando cae el microfno va en mods/sounds/
                setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'musica'); --es la musica que se reproduce va en mods/music/ 
                setPropertyFromClass('GameOverSubstate', 'endSoundName', 'deathConfirm-sonido'); --este effecto de confirmacion del retry va en mods/music/
	end
end