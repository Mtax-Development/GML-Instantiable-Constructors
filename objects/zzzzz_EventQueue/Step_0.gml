cycle += (60 / game_get_speed(gamespeed_fps));

repeat (everyStep.getSize())
{
	var _event = everyStep.removeLast();
	with (_event[0])
	{
		with (_event[0])
		{
			_event[1]();
		}
	}
}

if (cycle >= 1)
{
	frameIsStep = true;
	
	repeat (step.getSize())
	{
		var _event = step.removeLast();
		with (_event[0])
		{
			with (_event[0])
			{
				_event[1]();
			}
		}
	}
	
	cycle = 0;
}
else
{
	frameIsStep = false;
	step.clear();
}
