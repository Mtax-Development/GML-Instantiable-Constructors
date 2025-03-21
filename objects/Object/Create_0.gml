base.instance = id;

var _argument = variable_struct_get(self, "createEventArgument");
variable_struct_remove(self, "createEventArgument");

with (base)
{
	script_execute_ext(createEvent, ((is_array(_argument)) ? _argument : [_argument]));
}
