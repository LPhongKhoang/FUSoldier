/// @description Insert description here
// You can write your code in this editor
var cell_width = 32;
var cell_height = 32;

var hcells = room_width / cell_width;
var vcells = room_height / cell_width;
global.grid = mp_grid_create(0,0,hcells,vcells,cell_width,cell_height);
mp_grid_add_instances(global.grid,ObjWall,false);

