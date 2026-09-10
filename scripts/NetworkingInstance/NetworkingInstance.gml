//  @function			NetworkingInstance()
/// @description		Instance type operating the Networking event.
function NetworkingInstance() : Instance() constructor
{
  #region [Properties]
	
	static object = NetworkingObject;
	static networkingEvent = null;
	
	priority = 4;
	
  #endregion
  #region [Methods]
   #region <Getters>
	
	/// @returns			{struct}
	/// @description		Return setup data used to operate the object instance.
	static getBaseInstanceData = function()
	{
		var _base = self;
		
		return
		{
			base: _base,
			persistent: true,
		};
	}
	
   #endregion
  #endregion
}
