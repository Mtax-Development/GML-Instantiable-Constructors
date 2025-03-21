if (is_instanceof(instanceLayer, Layer))
{
	instanceLayer = instanceLayer.destroy(true);
}

if (is_instanceof(step, PriorityQueue))
{
	step = step.destroy();
}

if (is_instanceof(everyStep, PriorityQueue))
{
	everyStep = everyStep.destroy();
}

if (is_instanceof(draw, PriorityQueue))
{
	draw = draw.destroy();
}

if (is_instanceof(drawGUI, PriorityQueue))
{
	drawGUI = drawGUI.destroy();
}
