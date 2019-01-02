/// @description Insert description here
// You can write your code in this editor
if (instance_exists(ObjPlayer1))
{
	CurrentHP = ObjPlayer1.HP;
	MaxHP = ObjPlayer1.MaxHP;
} else if (instance_exists(ObjPlayer2))
{
	CurrentHP = ObjPlayer2.HP;
	MaxHP = ObjPlayer2.MaxHP;
}

draw_sprite(HealthBarEmpty,0,x,y);

draw_sprite_ext(HealthBarFull,0,x,y,CurrentHP/MaxHP,1,0,c_white,1);

draw_sprite(HealthBar,0,x,y);

draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x+130,y-5,string(CurrentHP) + "/" + string(MaxHP));

