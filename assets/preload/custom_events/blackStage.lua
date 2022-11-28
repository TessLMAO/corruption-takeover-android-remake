	function onEvent(name,value1)
		if name == 'blackStage' then 

			if value1 == '1' then
				if not lowQuality then
				doTweenAlpha('tweenCutOffAlpha', 'corruptvignette', 1, 1, 'linear');
				end
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
				if not lowQuality then
				doTweenAlpha('tweenCutOffAlpha', 'corruptvignette1', 1, 1, 'linear');
				end
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
