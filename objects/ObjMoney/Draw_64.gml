/// @description Insert description here
// You can write your code in this editor
if (instance_exists(ObjPlayer1)){
	CurrentMoney = ObjPlayer1.Money;
} else if (instance_exists(ObjPlayer2))
{
	CurrentMoney = ObjPlayer2.Money;
}
draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);
draw_text(x,y," X" + string(CurrentMoney));
