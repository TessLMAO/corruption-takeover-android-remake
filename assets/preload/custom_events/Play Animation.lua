	function onEvent(name,value1)
		if name == 'Play Animation' then 

			if value1 == 'reload' then
				playSound('reload', 50);

			end
			if value1 == 'shoot' then
				triggerEvent('Screen Shake','1,0.003','00000,0.0.0.0.0.0.0.0.01')
			end
		end
	end
