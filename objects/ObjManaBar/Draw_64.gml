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
draw_sprite(ManaBarEmpty,0,x,y);

draw_sprite_ext(ManaBarFull,0,x,y,CurrentMana/MaxMana,1,0,c_white,1);

draw_sprite(ManaBar,0,x,y);

draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_aqua);
draw_text(x+130,y-5,string(CurrentMana) + "/" + string(MaxMana));
