/// @description Insert description here
// You can write your code in this editor
if (instance_exists(GameManager.obj_Player)){
	CurrentMoney = GameManager.obj_Player.Money;
} 
draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);
draw_text(x,y," X" + string(CurrentMoney));
