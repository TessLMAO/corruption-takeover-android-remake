function onStepHit()
	if curStep == 1665 then
		doTweenAlpha('hud', 'camHUD', 0, 0.5, 'linear')
		setProperty('defaultCamZoom', 1.5)
		addLuaText('Watermarc', false);
		setProperty('corruptvignette3.alpha', 1);
		makeLuaSprite('corruptvignette3', 'picod3/corruptvignette3', 0, -30);
		scaleObject('corruptvignette3', 1, 1.1);
		setObjectCamera('corruptvignette3', 'other');
		setProperty('corruptvignette3.antialiasing', false);
		addLuaSprite('corruptvignette3', true);
     function onUpdate()
	triggerEvent('Camera Follow Pos','425','515')
	setProperty('Watermarc.alpha', 0);
      end
	end
	  if curStep == 1840 then
		doTweenAlpha('tweenCutOffAlpha', 'out', 1, 3.8, 'linear');
	  end
   end