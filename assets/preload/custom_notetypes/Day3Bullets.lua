function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Day3Bullets' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Bullets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
end
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Day3Bullets' then
		setProperty('health', getProperty('health') - 0.2); 
	end
end
dodgeAnimations = {'singRIGHT-alt', 'singDOWN-alt', 'singUP-alt', 'singLEFT-alt'}
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Day3Bullets' then
		playSound('shoot', 25);
		characterPlayAnim('boyfriend', dodgeAnimations[noteData+1], true);
		setProperty('boyfriend.specialAnim', true);

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'singLEFT-alt';
		elseif noteData == 1 then
			animToPlay = 'singDOWN-alt';
		elseif noteData == 2 then
			animToPlay = 'singUP-alt';
		elseif noteData == 3 then
			animToPlay = 'singRIGHT-alt';
	end
end
end