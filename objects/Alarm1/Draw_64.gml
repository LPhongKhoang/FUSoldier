TextDegree+=15; 

// draw text of CD clock1
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
if (GameManager.obj_Player.alarm[1] >= 0)
	draw_text(x,y,string(floor(GameManager.obj_Player.alarm[1]/room_speed)));
if (GameManager.obj_Player.alarm[1]<0) && (ObjPlayer1.alarm[2]<0)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_blue);
	draw_text_transformed(x,y,string("SPEED!"),0.75,0.75,TextDegree);
}
