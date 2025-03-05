//  @function				InterfaceInstance()
/// @description			Instance type operating the Draw GUI event.
function InterfaceInstance() : Instance() constructor
{
	static object = InterfaceObject;
	static drawGUIEvent = function() {}
	
	priority = 5;
	
	/// @returns			{struct}
	/// @description		Return setup data used to operate the object instance.
	static getBaseInstanceData = function()
	{
		var _base = self;
		
		return
		{
			base: _base,
			visible: true,
			createEvent: createEvent,
			stepEvent: stepEvent,
			drawEvent: drawEvent,
			drawGUIEvent: drawGUIEvent,
			cleanUpEvent: cleanUpEvent
		};
	}
}
