/// @description Insert description here
// You can write your code in this editor
draw_set_font(FontSelection);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_color(c_aqua);
draw_text(250,61,"Choose your Character:");
draw_set_color(c_white);
if(instance_exists(ObjPlayer1))
{
	draw_text(520,190,"Information Assurance");
	draw_text(200,575,string(ObjPlayer1.MaxHP));
	draw_text(200,633,string(ObjPlayer1.MaxMana));
	draw_text(200,700,string(ObjPlayer1.Dam));
}
else if(instance_exists(ObjPlayer2))
{
	draw_text(520,190,"Computer Science");
	draw_text(200,575,string(ObjPlayer2.MaxHP));
	draw_text(200,633,string(ObjPlayer2.MaxMana));
	draw_text(200,700,string(ObjPlayer2.Dam));
}
else if(instance_exists(ObjPlayer3))
{
	draw_text(520,190,"Software Engineering");
	draw_text(200,575,string(ObjPlayer3.MaxHP));
	draw_text(200,633,string(ObjPlayer3.MaxMana));
	draw_text(200,700,string(ObjPlayer3.Dam));
}
else if(instance_exists(ObjPlayer4))
{
	draw_text(520,190,"Graphic Designer");
	draw_text(200,575,string(ObjPlayer4.MaxHP));
	draw_text(200,633,string(ObjPlayer4.MaxMana));
	draw_text(200,700,string(ObjPlayer4.Dam));
}