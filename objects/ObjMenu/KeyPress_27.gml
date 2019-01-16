/// @description Insert description here
// You can write your code in this editor
if not global.pause 
{
	global.pause = true;
	instance_deactivate_all(true);
} else
{
	global.pause = false;
	instance_activate_all();
}