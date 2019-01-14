
	
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
draw_text_transformed(x,y,str,1,1,0);
