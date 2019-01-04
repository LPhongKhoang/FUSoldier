draw_sprite(viewTextBox,0,x,y);
boxWid = sprite_get_width(viewTextBox);
	
var str = "";
var Q = ObjQues;

var i=0; repeat (Q.ds_quests_num)
{
	var stage = Q.ds_quests[# 1,i];
	if (stage != -1)
	{
		var array = Q.ds_quests[# 2,i];
		str += "\n" + string_upper(Q.ds_quests[# 0 ,i]) + ": " + array[stage];
	}
	i++;
}


draw_set_font(FontPixel);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
stringHeight = string_height(str);
draw_text_ext_transformed(x+16,y-32,str,stringHeight,boxWid,1,1,0);
