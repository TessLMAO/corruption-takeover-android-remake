	function onEvent(name,value1)
		if name == 'black' then 

			if value1 == '1' then
				doTweenAlpha('tweenCutOffAlpha', 'BG', 0, 1, 'linear');
				doTweenAlpha('hola', 'snow', 0, 1, 'linear');
				doTweenAlpha('rol', 'DarnellSanta', 0, 1, 'linear');
				doTweenAlpha('ododj', 'gf', 0, 1, 'linear');
				doTweenAlpha('p', 'DownBoppers', 0, 1, 'linear');
				setProperty('iconP1.alpha', 0);
				setProperty('iconP2.alpha', 0);
				setProperty('scoreTxt.alpha', 0);
				setProperty('timeTxt.alpha', 0);
				setProperty('healthBar.alpha', 0);
				setProperty('timeBar.alpha', 0);
				setPropertyFromGroup('opponentStrums',0,'alpha',0)
				setPropertyFromGroup('opponentStrums',1,'alpha',0)
				setPropertyFromGroup('opponentStrums',2,'alpha',0)
				setPropertyFromGroup('opponentStrums',3,'alpha',0)
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
			if value1 == '2' then
				doTweenAlpha('tweenCutOffhAlpha', 'BG', 1, 1, 'linear');
				doTweenAlpha('hohla', 'snow', 1, 1, 'linear');
				doTweenAlpha('y', 'gf', 1, 1, 'linear');
				doTweenAlpha('rohl', 'DarnellSanta', 1, 1, 'linear');
				doTweenAlpha('pj', 'DownBoppers', 1, 1, 'linear');
				setProperty('iconP1.alpha', 1);
				setProperty('iconP2.alpha', 1);
				setProperty('scoreTxt.alpha', 1);
				setProperty('timeTxt.alpha', 1);
				setProperty('healthBar.alpha', 1);
				setProperty('timeBar.alpha', 1);
				setProperty('corruptvignette1.alpha', 0);
				setProperty('corruptvignette.alpha', 0);
				triggerEvent('Camera Follow Pos','','')
				setPropertyFromGroup('opponentStrums',0,'alpha',0.3)
                setPropertyFromGroup('opponentStrums',1,'alpha',0.3)
                setPropertyFromGroup('opponentStrums',2,'alpha',0.3)
                setPropertyFromGroup('opponentStrums',3,'alpha',0.3)
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
			if value1 == '3' then
				if not lowQuality then
				doTweenAlpha('tweenCutOffAlpha', 'corruptvignette3', 1, 0.4, 'linear');
				end

				addAnimationByIndices('DarnellSanta', 'idle', 'Bottom Corrupted Boppers0','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14',24)
			
				addAnimationByIndices('DownBoppers', 'idle', 'Second Corrupted Boppers0','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14',24)

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
		end
	end
