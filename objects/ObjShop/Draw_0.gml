/// @description Insert description here
// You can write your code in this editor
if (MoneyCheck = 0)
{
	draw_set_font(FontPixel);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(ObjMoney.x,ObjMoney.y+30,"You don't have enough coin!");
}