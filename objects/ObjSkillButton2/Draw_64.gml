draw_sprite(ButtonSkill2,-1,x,y);


draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x,y+32,string(GameManager.obj_Player.LevelSkill[2]));