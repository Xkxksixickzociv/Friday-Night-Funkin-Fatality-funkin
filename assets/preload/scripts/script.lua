function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.60 then
       setProperty('health', health- 0.017);
	end
end
