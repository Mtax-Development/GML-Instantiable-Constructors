cycle += (60 / game_get_speed(gamespeed_fps));
frameIsStep = (cycle >= 1);

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

if (frameIsStep)
{
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
	step.clear();
}
