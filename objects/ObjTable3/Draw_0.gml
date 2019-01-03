/// @description Insert description here
// You can write your code in this editor
draw_self();
if distance_to_object(ObjPlayer1) <= 5
{
	if (instance_exists(Table3_Item)) && (ItemBuyTable3 = true)
	{
		draw_set_font(FontPixel);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_white);
		draw_text(ObjTable3.x,ObjTable3.y-50,"Do u want to buy this? with " + string(Table3_Item.Cost) + " coin?");
		IteminTable3 = true;
		ObjTable2.IteminTable2 = false;
		ObjTable1.IteminTable1 = false;
	}
} else IteminTable3 = false;