if (instance_exists(ObjShopLogo) && ItemChoosen = true)
{
	Weapon_Rotate(ObjPlayer1);
} 
else if (!instance_exists(ObjShopLogo)) Weapon_Rotate(ObjPlayer1);
