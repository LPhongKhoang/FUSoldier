/// @description Insert description here
// You can write your code in this editor
if (instance_exists(ObjPlayer1)){
	CurrentNum = ObjPlayer1.NumBlood;
} else if (instance_exists(ObjPlayer2))
{
	CurrentNum = ObjPlayer2.NumBlood;
}
draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);
draw_text(x,y,"X " + string(CurrentNum));
