/// @description Insert description here
// You can write your code in this editor
draw_self();
if distance_to_object(ObjPlayer1) <= 5
{
	if (instance_exists(Table1_Item)) && (ItemBuyTable1 = true)
	{
		draw_set_font(FontPixel);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_white);
		draw_text(ObjTable1.x,ObjTable1.y-50,"Do u want to buy this? with " + string(Table1_Item.Cost) + " coin?");
		IteminTable1 = true;
		ObjTable2.IteminTable2 = false;
		ObjTable3.IteminTable3 = false;
	}
} else IteminTable1 = false;