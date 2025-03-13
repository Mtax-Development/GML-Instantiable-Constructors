//  @function				NetworkingInstance()
/// @description			Instance type operating the Networking event.
function NetworkingInstance() : Instance() constructor
{
	static object = NetworkingObject;
	static networkingEvent = null;
	
	priority = 4;
	
	/// @returns			{struct}
	/// @description		Return setup data used to operate the object instance.
	static getBaseInstanceData = function()
	{
		var _base = self;
		
		return
		{
			base: _base,
			visible: is_method(drawEvent),
			createEvent: createEvent,
			stepEvent: stepEvent,
			drawEvent: drawEvent,
			networkingEvent: networkingEvent,
			cleanUpEvent: cleanUpEvent,
		};
	}
}
