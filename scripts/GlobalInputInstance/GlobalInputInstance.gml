//  @function				GlobalInputInstance()
/// @description			Instance type operating Global Gesture events and a Step event executed
///							outside of Event Queue for correct input processing.
function GlobalInputInstance() : Instance() constructor
{
	static object = GlobalInputObject;
	static stepEvent = null;
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
}
