	function onEvent(name,value1)
		if name == 'flash black' then 

			if value1 == '1' then
				makeLuaSprite('flashblack', 'picod2/flashblack', 0, 0);
				setProperty('flashblack.alpha', 0.0006);
				setObjectCamera('flashblack', 'other');
				setProperty('flashblack.alpha', 1);
				doTweenAlpha('tweenCutOffAlpha', 'flashblack', 0, 1.7, 'linear');
				setObjectCamera('flashblack', 'other');
				scaleObject('flashblack', 1.2, 1.2);
				addLuaSprite('flashblack', true);

				if lowQuality then	
					removeLuaSprite('fogthing',true)
					removeLuaSprite('shaderevil',true)
					removeLuaSprite('tvscreen',true)
					removeLuaSprite('limo',true)
					removeLuaSprite('limo2',true)
					removeLuaSprite('SkidNeneStand',true)
					removeLuaSprite('flashblack',true)
					end
			end
			if value1 == '2' then
				setProperty('defaultCamZoom', 1)
				makeLuaSprite('flashblack', 'picod2/flashblack', 0, 0);
				setProperty('flashblack.alpha', 0.0006);
				setObjectCamera('flashblack', 'other');
				setProperty('flashblack.alpha', 1);
				doTweenAlpha('tweenCutOffAlpha', 'flashblack', 0, 1.7, 'linear');
				setObjectCamera('flashblack', 'other');
				scaleObject('flashblack', 1.2, 1.2);
				addLuaSprite('flashblack', true);
				doTweenAlpha('hud', 'camHUD', 0, 0.5, 'linear')

				addLuaText('Watermarc', false);
				setProperty('corruptvignette3.alpha', 1);
				makeLuaSprite('corruptvignette3', 'picod3/corruptvignette3', 0, -30);
				scaleObject('corruptvignette3', 1, 1.1);
				setObjectCamera('corruptvignette3', 'other');
				setProperty('corruptvignette3.antialiasing', false);
				addLuaSprite('corruptvignette3', true);
				setProperty('Watermarc.alpha', 0);

				makeAnimatedLuaSprite('fogthing','picod1/fogthing',-1300,-180)
                addAnimationByPrefix('fogthing','idle','fog instancia 100',24,true)
				scaleObject('fogthing',2,2)
				setProperty('fogthing.alpha', 0.23);
				addLuaSprite('fogthing',true)

				makeAnimatedLuaSprite('SkidNeneStand','picod2/SkidNeneStand',-400,200)
				addAnimationByIndices('SkidNeneStand', 'dance', 'Nene Worried Idle 30','0,1,2,3,4,5,6,7,8,9,10,11,12,13',24)
				scaleObject('SkidNeneStand', 0.7, 0.7)
				addLuaSprite('SkidNeneStand', false);

				if lowQuality then	
					removeLuaSprite('fogthing',true)
					removeLuaSprite('shaderevil',true)
					removeLuaSprite('tvscreen',true)
					removeLuaSprite('limo',true)
					removeLuaSprite('limo2',true)
					removeLuaSprite('SkidNeneStand',true)
					removeLuaSprite('flashblack',true)
				end
			end
		end
	end

function onTweenCompleted(tag)
if tag == 'tweenCutOffAlpha' then
removeLuaSprite('flashblack', true)
	end
end