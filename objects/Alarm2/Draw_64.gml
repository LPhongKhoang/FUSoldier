
// draw text of CD clock2
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_green);
if (GameManager.obj_Player.alarm[2] >= 0)
	draw_text(x,y,string(floor(GameManager.obj_Player.alarm[2]/room_speed)));