// @description			This macro accesses Event Queue without its sorting prefix. Instance events
//						outside it are executed in alphabetical order of their object asset name. A
///						name prefix attempts to force ordering, so methods pushed to its queues can
///						be executed in the same frame, at the end of the same type of event.
#macro EventQueue zzzzz_EventQueue

instanceLayer = new Layer(layer_get_name(layer));
step = new PriorityQueue();
everyStep = new PriorityQueue();
draw = new PriorityQueue();
drawGUI = new PriorityQueue();
cycle = 1;
frameIsStep = true;
