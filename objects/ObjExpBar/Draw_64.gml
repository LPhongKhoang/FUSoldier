if (instance_exists(GameManager.obj_Player)){
	CurrentExp = GameManager.obj_Player.Exp;
	MaxExp = GameManager.obj_Player.MaxExp;
}

draw_sprite(ExpBarEmpty,0,x,y);

draw_sprite_ext(ExpBarFull,0,x,y,CurrentExp/MaxExp,1,0,c_white,1);

draw_sprite(ExpBar,0,x,y);

draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);
draw_text(x+130,y-5,string(CurrentExp) + "/" + string(MaxExp));
