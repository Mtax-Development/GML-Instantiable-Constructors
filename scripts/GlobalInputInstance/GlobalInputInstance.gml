//  @function				GlobalInputInstance()
/// @description			Instance type operating Global Gesture events, a Step event executed
///							every step for correct input processing, as well as a Draw GUI End event
///							executing outside of the Event Queue.
function GlobalInputInstance() : Instance() constructor
{
	static object = GlobalInputObject;
	static stepEventQueue = EventQueue.everyStep;
	static stepEvent = null;
	static drawGUIEndEvent = null;
	static globalTapEvent = null;
	static globalDoubleTapEvent = null;
	static globalDragStartEvent = null;
	static globalDraggingEvent = null;
	static globalDragEndEvent = null;
	static globalFlickEvent = null;
	static globalPinchStartEvent = null;
	static globalPinchInEvent = null;
	static globalPinchOutEvent = null;
	static globalPinchEndEvent = null;
	static globalRotateStartEvent = null;
	static globalRotatingEvent = null;
	static globalRotateEndEvent = null;
	
	priority = 2;
	
	/// @returns			{struct}
	/// @description		Return setup data used to operate the object instance.
	static getBaseInstanceData = function()
	{
		var _base = self;
		
		return
		{
			base: _base,
			visible: ((drawEvent != null) or (drawGUIEndEvent != null)),
			persistent: true,
		};
	}
}
