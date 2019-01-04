/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))
{
	RotateRight();
} 
else if keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))
{
	RotateLeft();
}
