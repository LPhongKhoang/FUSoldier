
var x_object = argument[0]; 
var y_object = argument[1]; 
var Speed = argument[2]
path = path_add();
if(mp_grid_path(global.grid,path,x,y,x_object,y_object,1))
{
	path_start(path,Speed,path_action_stop,false);
}
