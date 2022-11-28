function onCreate()
	makeLuaText('Watermarc', "Port By Perez Sen | Opt By Ken GG", 0, 2, 700); 
	setTextSize('Watermarc', 20);
	setObjectCamera('Watermarc', 'other');
	addLuaText('Watermarc', true);

	makeLuaSprite('BG', 'winter/BG', -460, -500);
	setLuaSpriteScrollFactor('BG', 0.38, 0.38);
	scaleObject('BG', 0.85, 0.85)
	addLuaSprite('BG', false);
	
	makeLuaSprite('snow', 'winter/snow', -760, 585);
	scaleObject('snow', 1.4, 1.7)
	addLuaSprite('snow', false);

	makeAnimatedLuaSprite('DarnellSanta','winter/DarnellSanta', -30, 200)
	addAnimationByIndices('DarnellSanta', 'idle', 'Bottom Level Boppers0','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14',24)
	scaleObject('DarnellSanta', 0.7, 0.7)
	addLuaSprite('DarnellSanta', false);

	makeAnimatedLuaSprite('DownBoppers','winter/DownBoppers', 1150, 340)
	addAnimationByIndices('DownBoppers', 'idle', 'Second Level Boppers0','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14',24)
	scaleObject('DownBoppers', 0.75, 0.75)
	addLuaSprite('DownBoppers', false);
	
	if not lowQuality then
	makeLuaSprite('corruptvignette', 'winter/corruptvignette', 0, -30);
	scaleObject('corruptvignette', 1, 1.1);
	setProperty('corruptvignette.alpha', 0);
	setObjectCamera('corruptvignette', 'HUD');
	addLuaSprite('corruptvignette', true);

	makeLuaSprite('corruptvignette1', 'winter/corruptvignette1', 0, -30);
	scaleObject('corruptvignette1', 1, 1.1);
	setProperty('corruptvignette1.alpha', 0);
	setObjectCamera('corruptvignette1', 'HUD');
	addLuaSprite('corruptvignette1', true);

	makeLuaSprite('corruptvignette3', 'winter/corruptvignette3', 0, -30);
	scaleObject('corruptvignette3', 1, 1.1);
	setProperty('corruptvignette3.alpha', 0);
	setObjectCamera('corruptvignette3', 'HUD');
	addLuaSprite('corruptvignette3', true);
	end

	makeLuaSprite('shaderevil', 'picod1/shaderevil', 0, -30);
	scaleObject('shaderevil', 1, 1.1);
	setObjectCamera('shaderevil', 'other');
	setProperty('shaderevil.antialiasing', false);
	setProperty('shaderevil.alpha', 0.23);
	addLuaSprite('shaderevil', true);
	if lowQuality then	
		removeLuaSprite('shaderevil',true)
		removeLuaSprite('corruptvignette3',true)
		removeLuaSprite('corruptvignette1',true)
		removeLuaSprite('corruptvignette',true)
		removeLuaSprite('DownBoppers',true)
		removeLuaSprite('DarnellSanta',true)
		removeLuaSprite('Boppers',true)
		removeLuaSprite('stairs',true)
		removeLuaSprite('tree',true)

	   end
	end

	function onBeatHit()
		if curBeat % 2== 0 then
	objectPlayAnimation('Boppers', 'idle', false);	
	objectPlayAnimation('DownBoppers', 'idle', false);	
	objectPlayAnimation('DarnellSanta', 'idle', false);	
     end

	 function onUpdate()
		setTextString('botplayTxt', "PORTEADO POR PEREZ SEN");
	  end
   close(true);
end
