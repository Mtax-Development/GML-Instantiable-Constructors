//  @function				TechnicalInstance()
/// @description			Instance type operating Begin Step and Draw GUI events, which are executed
///							outside of the Event Queue.
function TechnicalInstance() : Instance() constructor
{
	static object = TechnicalObject;
	static beginStepEvent = function() {}
	static drawGUIEndEvent = function() {}
	
	priority = 0;
	
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
			beginStepEvent: beginStepEvent,
			stepEvent: stepEvent,
			drawEvent: drawEvent,
			drawGUIEndEvent: drawGUIEndEvent,
			cleanUpEvent: cleanUpEvent
		};
	}
}
