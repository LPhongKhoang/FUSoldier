/// @description Insert description here
// You can write your code in this editor
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width;//+200
menu_y = gui_height - gui_margin - 200;
menu_x_target = gui_width - gui_margin -520;
menu_speed = 7; //lower is faster
menu_font = FontPixel;
menu_itemheight = font_get_size(FontMenu);
menu_committed = -1;
menu_control = true;


menu[0] = "Press any key to Start";
/*if (instance_exists(ObjStartScreen))
{
	audio_play_sound(StartScreenMusic,0,false);
} else audio_pause_sound(StartScreen);
*/
menu_items = array_length_1d(menu);
menu_cursor = 0;
