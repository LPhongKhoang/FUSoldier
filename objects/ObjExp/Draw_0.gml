if (instance_exists(ObjPlayer1)){
	CurrentExp = ObjPlayer1.Exp;
	MaxExp = ObjPlayer1.MaxExp;
} else if (instance_exists(ObjPlayer2))
{
	CurrentExp = ObjPlayer2.Exp;
	MaxExp = ObjPlayer2.MaxExp;
}

draw_sprite(ExpBarEmpty,0,64,156);

draw_sprite_ext(ExpBarFull,0,64,156,CurrentExp/MaxExp,1,0,c_white,1);

draw_sprite(ExpBar,0,64,156);

draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);
draw_text(190,162,string(CurrentExp) + "/" + string(MaxExp));
