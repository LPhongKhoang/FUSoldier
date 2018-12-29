/// @description Insert description here
// You can write your code in this editor
if (instance_exists(ObjPlayer1)){
	CurrentLevel = ObjPlayer1.Level;
} else if (instance_exists(ObjPlayer2))
{
	CurrentLevel = ObjPlayer2.Level;
}
draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(40,38,"Level " + string(CurrentLevel));
