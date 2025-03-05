base.instance = id;

var _argument = ((is_array(createEventArgument)) ? createEventArgument : [createEventArgument]);
variable_struct_remove(self, "createEventArgument");

with (base)
{
	script_execute_ext(createEvent, _argument);
}
