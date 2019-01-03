/// @description Insert description here
// You can write your code in this editor
draw_self();
if distance_to_object(ObjPlayer1) <= 5
{
	if (instance_exists(Table2_Item)) && (ItemBuyTable2 = true)
	{
		draw_set_font(FontPixel);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_white);
		draw_text(ObjTable2.x,ObjTable2.y-50,"Do u want to buy this? with " + string(Table2_Item.Cost) + " coin?");
		IteminTable2 = true;
		ObjTable1.IteminTable1 = false;
		ObjTable3.IteminTable3 = false;
	}
} else IteminTable2 = false;