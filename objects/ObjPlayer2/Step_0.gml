/// @description Insert description here
// You can write your code in this editor
XAxis = keyboard_check(vk_right) - keyboard_check(vk_left);
YAxis= keyboard_check(vk_down) - keyboard_check(vk_up);

if (XAxis != 0 || YAxis != 0){
	Action = MOVE;
}
else Action = IDLE;

if (XAxis != 0){
	Direction = HORIZONTAL;
	if (XAxis > 0) 
	{
		image_xscale = 1;
	}
	else if (XAxis < 0) image_xscale = -1;
}
if (YAxis != 0){
	if (YAxis < 0) Direction = UP;
	else if (YAxis > 0) Direction = DOWN;
}

var obj_direction = point_direction(0, 0, XAxis, YAxis);
var obj_length = Speed * (XAxis != 0 || YAxis != 0);

XAxis = lengthdir_x(obj_length,obj_direction);
YAxis = lengthdir_y(obj_length,obj_direction);

if(place_meeting(x+XAxis,y,ObjCollision))
{
	while (!place_meeting(x+sign(XAxis),y,ObjCollision))
	{
		x += sign(XAxis);
	}
	XAxis = 0;
}
x+= XAxis;

if (place_meeting(x, y+YAxis, ObjCollision))
{
	while (!place_meeting(x,y+sign(YAxis),ObjCollision))
	{
		y += sign(YAxis);
	}
	YAxis = 0;
}

x += XAxis;
y += YAxis;

sprite_index = View[Direction,Action];


