//  @function				Instance()
/// @description			Framework for instantiable constructors containing object events and data.
function Instance() constructor
{
	static object = Object;
	static createEvent = null;
	static stepEvent = null;
	static drawEvent = null;
	static cleanUpEvent = null;
	
	instance = undefined;
	priority = 10;
	
	/// @returns			{struct}
	/// @description		Return setup data used to operate the object instance.
	static getBaseInstanceData = function()
	{
		var _base = self;
		
		return
		{
			base: _base,
			visible: is_method(drawEvent),
		};
	}
	
	/// @argument			argument? {any|any[]}
	/// @argument			location? {Vector2}
	/// @argument			added_data?... {struct}
	/// @returns			{int:instance}
	/// @description		Instantiate this constructor as an object with appropriate functions as
	///						events.
	static createInstance = function(_argument, _location)
	{
		var _instance_data = self.getBaseInstanceData();
		var _i = 2;
		repeat (argument_count - _i)
		{
			struct_merge(_instance_data, argument[_i]);
			
			++_i;
		}
		
		_instance_data.createEventArgument = _argument;
		
		return EventQueue.instanceLayer.createInstance(object, _location, _instance_data);
	}
	
	/// @returns			{undefined}
	/// @description		Destroy object instance of this constructor.
	static destroyInstance = function()
	{
		instance = EventQueue.instanceLayer.destroyInstance(instance);
		
		return undefined;
	}
	
	/// @argument			source {SpriteRenderer}
	/// @returns			{any}
	/// @description		Set the properties of the specified constructor as instance variables and
	///						return that constructor.
	static updateInstance = function(_source)
	{
		switch (instanceof(_source))
		{
			case "SpriteRenderer":
				instance.sprite_index = _source.sprite.ID;
				instance.x = _source.location.x;
				instance.y = _source.location.y;
				instance.image_index = _source.frame;
				instance.image_xscale = _source.scale.x;
				instance.image_yscale = _source.scale.y;
				instance.image_angle = _source.angle.value;
				instance.image_blend = _source.color;
				instance.image_alpha = _source.alpha;
			break;
		}
		
		return _source;
	}
}
