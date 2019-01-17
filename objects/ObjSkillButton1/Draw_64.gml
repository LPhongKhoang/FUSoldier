draw_sprite(ButtonSkill1,-1,x,y);


draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x-32,y,string(GameManager.obj_Player.LevelSkill[1]));