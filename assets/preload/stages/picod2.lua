function onCreate()
	makeLuaText('Watermarc', "Port By Perez Sen | Opt By Ken GG", 0, 2, 700); 
	setTextSize('Watermarc', 20);
	setObjectCamera('Watermarc', 'other');
	addLuaText('Watermarc', true);

	makeLuaSprite('BG', 'picod1/BG', -650, -350);
	scaleObject('BG', 0.7, 0.7)
	addLuaSprite('BG', false);

	if not lowQuality then
	makeAnimatedLuaSprite('limo','picod2/limo', -950, -850)
	addAnimationByIndices('limo', 'dance', 'Limo Bop','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29',24)
	scaleObject('limo', 1.3, 1.3)
	addLuaSprite('limo', false);

	makeAnimatedLuaSprite('SkidNeneStand','picod2/SkidNeneStand',-400,200)
	addAnimationByIndices('SkidNeneStand', 'dance', 'Nene Stand Idle','0,1,2,3,4,5,6,7,8,9,10,11,12,13',24)
	scaleObject('SkidNeneStand', 1.4, 1.4)
	addLuaSprite('SkidNeneStand', false);
	setObjectOrder('SkidNeneStand', getObjectOrder('limo') + 1)
	end

	if not lowQuality then
	makeLuaSprite('shaderevil', 'picod1/shaderevil', 0, -30);
	scaleObject('shaderevil', 1, 1.1);
	setObjectCamera('shaderevil', 'other');
	setProperty('shaderevil.antialiasing', false);
	setProperty('shaderevil.alpha', 0.23);
	addLuaSprite('shaderevil', true);

	makeAnimatedLuaSprite('fogthing','picod1/fogthing',-1300,-480)
	addAnimationByPrefix('fogthing','idle','fog instancia 100',24,true)
	setObjectCamera('fogthing', 'HUD');
	setProperty('fogthing.alpha', 0.16);
	scaleObject('fogthing',2,2)
	addLuaSprite('fogthing',true)

	end
	--PreCache No eliminar
	precacheImage('picod2/flashblack')
	precacheImage('picod2/CBoyfriend1')
	precacheImage('picod2/CBoyfriend2')
	precacheImage('picod1/corruptvignette3')
	precacheImage('picod1/fogthing')
	precacheImage('notes_unable')

	if lowQuality then	
		removeLuaSprite('fogthing',true)
		removeLuaSprite('shaderevil',true)
		removeLuaSprite('limo',true)
		removeLuaSprite('SkidNeneStand',true)
		removeLuaSprite('flashblack',true)
		end
	end

	function onCreatePost()
		setProperty('gf.visible',false)
		setObjectOrder('boyfriendGroup', getObjectOrder('limo'))
		end

	function onBeatHit()
		if curBeat % 1== 0 then
	objectPlayAnimation('SkidNeneStand', 'dance', false);	
	objectPlayAnimation('limo', 'dance', true);	
	objectPlayAnimation('limo2', 'dance', true);	
     end
end

	 function onUpdate()
		setTextString('botplayTxt', "PORTEADO POR PEREZ SEN");
	 end