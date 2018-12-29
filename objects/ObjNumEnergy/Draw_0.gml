/// @description Insert description here
// You can write your code in this editor
draw_set_font(FontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);
draw_text(ObjEnergy.x+42, ObjEnergy.y,"X " + string(ObjPlayer1.NumEnergy));