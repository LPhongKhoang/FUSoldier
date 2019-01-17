draw_sprite(ButtonSkill3,-1,x,y);


draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_aqua);
draw_text(x,y,string(GameManager.obj_Player.LevelSkill[3]));