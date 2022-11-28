local allowCountdown = false
function onStartCountdown()
  if not allowCountdown then
playSound('Lights_Turn_On', 100);
  allowCountdown = true;
  end
  end