/// @description Insert description here
// You can write your code in this editor
if (instance_exists(ObjPlayer1)){
	CurrentMana = ObjPlayer1.Mana;
	MaxMana = ObjPlayer1.MaxMana;
} else if (instance_exists(ObjPlayer2))
{
	CurrentMana = ObjPlayer2.Mana;
	MaxMana = ObjPlayer2.MaxMana;
}
draw_sprite(ManaBarEmpty,0,107,80);

draw_sprite_ext(ManaBarFull,0,64,110,CurrentMana/MaxMana,1,0,c_white,1);

draw_sprite(ManaBar,0,64,110);

draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_aqua);
draw_text(190,116,string(CurrentMana) + "/" + string(MaxMana));
