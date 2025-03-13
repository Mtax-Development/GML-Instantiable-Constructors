//  @function				NetworkingInstance()
/// @description			Instance type operating the Networking event.
function NetworkingInstance() : Instance() constructor
{
	static object = NetworkingObject;
	static networkingEvent = null;
	
	priority = 4;
}
