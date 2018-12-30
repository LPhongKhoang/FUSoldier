/// @description draw some text to countdown
// You can write your code in this editor

TextDegree+=15; 

// draw text of CD clock0
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
if (alarm[0] >= 0)
	draw_text(room_width/2,30,string(floor(alarm[0]/room_speed)));

if (alarm[0]<0)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_red);
	draw_text_transformed(room_width/2,30,string("TELEPORT!"),0.75,0.75,TextDegree);
}

// draw text of CD clock1
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
if (alarm[1] >= 0)
	draw_text(room_width/2,60,string(floor(alarm[1]/room_speed)));
if (alarm[1]<0) && (alarm[2]<0)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_blue);
	draw_text_transformed(room_width/2,60,string("SPEED!"),0.75,0.75,TextDegree);
}

// draw text of CD clock2
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_green);
if (alarm[2] >= 0)
	draw_text(room_width/2,90,string(floor(alarm[2]/room_speed)));