
function onEvent(name,value1)
		if name == 'Perez Sen' then 

			if value1 == '1' then
makeAnimatedLuaSprite('scenes','picod3/scenes', -30,-25)
	addAnimationByPrefix('scenes', 'idle', 'SkidNene0000', 24, false);
	setLuaSpriteScrollFactor('scenes', 0.19, 0.15);
	scaleObject('scenes', 2, 2)
	addLuaSprite('scenes', true);

makeLuaSprite('tvscreen', 'picod3/tvscreen', 0, -30);
	scaleObject('tvscreen', 1, 1.1);
	setObjectCamera('tvscreen', 'HUD');
	setProperty('tvscreen.antialiasing', false);
	addLuaSprite('tvscreen', true);
	setProperty('tvscreen.alpha', 0);


	makeAnimatedLuaSprite('VHS','VHS', -30,-25)
	addAnimationByPrefix('VHS', 'idle', 'Efecto 0', 24, true);
	addAnimationByPrefix('scenes', 'tabi', 'TabiWhitty0000', 24, false);
	addAnimationByPrefix('scenes', 'ruv', 'RuvSarv0000', 24, false);
	addAnimationByPrefix('scenes', 'lila', 'LemLila0000', 24, false);
	addAnimationByPrefix('scenes', 'dd1', 'DD10000', 24, false);
	addAnimationByPrefix('scenes', 'dd2', 'DD20000', 24, false);
	addAnimationByPrefix('scenes', 'dd3', 'DD30000', 24, false);
	addAnimationByPrefix('scenes', 'gf', 'GF0000', 24, false);
	setLuaSpriteScrollFactor('VHS', 0.1, 0.1);
	scaleObject('VHS', 4.4, 4.4)
	setObjectCamera('VHS', 'other');
	addLuaSprite('VHS', true);
	doTweenAlpha('tweenCutOffAlpha', 'scenes', 1, 1, 'linear');
	objectPlayAnimation('scenes', 'idle', true);	
	doTweenAlpha('tweenCutOffAlpha', 'VHS', 0.23, 1, 'linear');
	setProperty('tvscreen.alpha', 1);
	if lowQuality then	
		removeLuaSprite('RightBoppers',true)
		removeLuaSprite('LeftBoppers',true)
		removeLuaSprite('tvscreen',true)
		removeLuaSprite('VHS',true)
		end

		    end
			if value1 == '2' then
    objectPlayAnimation('scenes', 'tabi', true);	
			end
			if value1 == '3' then
    objectPlayAnimation('scenes', 'ruv', true);	
			end
			if value1 == '4' then
	objectPlayAnimation('scenes', 'lila', false);	
			end
			if value1 == '5' then
	objectPlayAnimation('scenes', 'dd1', false);	
			end
			if value1 == '6' then
	objectPlayAnimation('scenes', 'gf', false);	
			end
			if value1 == '7' then
	objectPlayAnimation('scenes', 'dd2', false);	
			end
			if value1 == '8' then
	objectPlayAnimation('scenes', 'dd3', false);	

           end
		   if value1 == '9' then
			doTweenAlpha('tweenCutOffAlpha', 'scenes', 0, 1.8, 'linear');
			removeLuaSprite('tvscreen',true)
		removeLuaSprite('VHS',true)
			 end
		 if value1 == '10' then
			setProperty('defaultCamZoom', 0.95)
			doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')

     		end
		end
	end

function onTweenCompleted(tag)
if tag == 'tweenCutOffAlpha' then
removeLuaSprite('scenes', true)
	end
end