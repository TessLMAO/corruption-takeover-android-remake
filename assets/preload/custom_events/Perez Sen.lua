	function onEvent(name,value1)
		if name == 'Perez Sen' then 

			if value1 == '1' then
			makeLuaSprite('tvscreen', 'picod3/tvscreen', 0, -30);
	scaleObject('tvscreen', 1, 1.1);
	setObjectCamera('tvscreen', 'HUD');
	setProperty('tvscreen.antialiasing', false);
	addLuaSprite('tvscreen', true);
	setProperty('tvscreen.alpha', 0);

	doTweenAlpha('tweenCutOffAlpha', 'scenes', 1, 1, 'linear');
	makeAnimatedLuaSprite('scenes','picod3/scenes', -30,-25)
	addAnimationByPrefix('scenes', 'idle', 'SkidNene0000', 24, true);
	setLuaSpriteScrollFactor('scenes', 0.19, 0.15);
	scaleObject('scenes', 2, 2)
	addLuaSprite('scenes', true);

	makeAnimatedLuaSprite('VHS','VHS', -30,-25)
	addAnimationByPrefix('VHS', 'idle', 'Efecto 0', 24, true);
	setLuaSpriteScrollFactor('VHS', 0.1, 0.1);
	scaleObject('VHS', 4.4, 4.4)
	setObjectCamera('VHS', 'other');
	doTweenAlpha('tweenCutOffAlpha', 'VHS', 0.23, 1, 'linear');
	addLuaSprite('VHS', true);
	
		    end
			if value1 == '2' then
    makeAnimatedLuaSprite('scenes','picod3/scenes', -30,-25)
    addAnimationByPrefix('scenes', 'idle', 'TabiWhitty0000', 24, true);
    setLuaSpriteScrollFactor('scenes', 0.19, 0.15);
	scaleObject('scenes', 2, 2)
	addLuaSprite('scenes', true);
			end
			if value1 == '3' then
    makeAnimatedLuaSprite('scenes','picod3/scenes', -30,-25)
	addAnimationByPrefix('scenes', 'idle', 'RuvSarv0000', 24, true);
	setLuaSpriteScrollFactor('scenes', 0.19, 0.15);
	scaleObject('scenes', 2, 2)
	addLuaSprite('scenes', true);
			end
			if value1 == '4' then
	makeAnimatedLuaSprite('scenes','picod3/scenes', -30,-25)
	addAnimationByPrefix('scenes', 'idle', 'LemLila0000', 24, true);
	setLuaSpriteScrollFactor('scenes', 0.19, 0.15);
	scaleObject('scenes', 2, 2)
	addLuaSprite('scenes', true);
			end
			if value1 == '5' then
	makeAnimatedLuaSprite('scenes','picod3/scenes', -30,-25)
	addAnimationByPrefix('scenes', 'idle', 'DD10000', 24, true);
	setLuaSpriteScrollFactor('scenes', 0.19, 0.15);
	scaleObject('scenes', 2, 2)
	addLuaSprite('scenes', true);
			end
			if value1 == '6' then
	makeAnimatedLuaSprite('scenes','picod3/scenes', -30,-25)
	addAnimationByPrefix('scenes', 'idle', 'GF0000', 24, true);
	setLuaSpriteScrollFactor('scenes', 0.19, 0.15);
	scaleObject('scenes', 2, 2)
	addLuaSprite('scenes', true);
			end
			if value1 == '7' then
	makeAnimatedLuaSprite('scenes','picod3/scenes', -30,-25)
	addAnimationByPrefix('scenes', 'idle', 'DD20000', 24, true);
	setLuaSpriteScrollFactor('scenes', 0.19, 0.15);
	scaleObject('scenes', 2, 2)
	addLuaSprite('scenes', true);
			end
			if value1 == '8' then
	makeAnimatedLuaSprite('scenes','picod3/scenes', -30,-25)
	addAnimationByPrefix('scenes', 'idle', 'DD30000', 24, true);
	setLuaSpriteScrollFactor('scenes', 0.19, 0.15);
	scaleObject('scenes', 2, 2)
	addLuaSprite('scenes', true);

           end
		   if value1 == '9' then
			doTweenAlpha('tweenCutOffAlpha', 'scenes', 0, 1.8, 'linear');
			setProperty('VHS.alpha', 0);
			 end
		 if value1 == '10' then
			setProperty('defaultCamZoom', 0.95)
			doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')

     		end
		end
	end

function onStepHit()
if curStep == 1402 then
removeLuaSprite('scenes', true)
	end
end