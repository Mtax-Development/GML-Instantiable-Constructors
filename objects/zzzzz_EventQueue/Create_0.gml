// @description			Instance events are executed in alphabetical order of their object asset name.
//						Naming the Event Queue with a final sortable symbol is an attempt at forcing its
//						instance to execute its event last, so methods pushed to its queues are executed
//						during the same frame they were submitted. This macro reserves its name without
//						the sorting prefix to make it accessible through it.
#macro EventQueue zzzzz_EventQueue

instanceLayer = new Layer(layer_get_name(layer));
step = new PriorityQueue();
everyStep = new PriorityQueue();
draw = new PriorityQueue();
drawGUI = new PriorityQueue();
cycle = 1;
frameIsStep = true;
