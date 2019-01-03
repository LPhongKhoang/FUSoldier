if keyboard_check_pressed(vk_enter) && BuyCheck = true
{
	if (ObjTable1.IteminTable1 = true)
	{
		if (ObjPlayer1.Money >= ObjTable1.Table1_Item.Cost)
		{	
			instance_destroy(ObjTable1.Table1_Item);
			instance_create_layer(ObjPlayer1.x,ObjPlayer1.y+25,"Weapon",ObjTable1.Table1_Item);
			ObjPlayer1.Money -= ObjTable1.Table1_Item.Cost;
			ObjTable1.Table1_Item.ItemChoosen = true;
			ObjTable1.IteminTable1 = false;
			ObjTable1.ItemBuyTable1 = false;
			BuyCheck = false;
		} else MoneyCheck = 0;
	}
	else if (ObjTable2.IteminTable2 = true)
	{
		if (ObjPlayer1.Money >= ObjTable2.Table2_Item.Cost)
		{
			instance_destroy(ObjTable2.Table2_Item);
			instance_create_layer(ObjPlayer1.x,ObjPlayer1.y+25,"Weapon",ObjTable2.Table2_Item);
			ObjPlayer1.Money -= ObjTable2.Table2_Item.Cost;
			ObjTable2.Table2_Item.ItemChoosen = true;
			ObjTable2.IteminTable2 = false;
			ObjTable2.ItemBuyTable2 = false;
			BuyCheck = false;
		} else MoneyCheck = 0;
	}
	else if (ObjTable3.IteminTable3 = true)
	{
		if (ObjPlayer1.Money >= ObjTable3.Table3_Item.Cost)
		{
			instance_destroy(ObjTable3.Table3_Item);
			instance_create_layer(ObjPlayer1.x,ObjPlayer1.y+25,"Weapon",ObjTable3.Table3_Item);
			ObjPlayer1.Money -= ObjTable3.Table3_Item.Cost;
			ObjTable3.Table3_Item.ItemChoosen = true;
			ObjTable3.IteminTable3 = false;
			ObjTable3.ItemBuyTable3 = false;
			BuyCheck = false;
		} else MoneyCheck = 0;
	}
} else MoneyCheck = 1;