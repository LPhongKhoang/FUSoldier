/// @description Insert description here
// You can write your code in this editor
Hp -= other.Dam;
instance_destroy(other);
if (Hp<=0)
{
	var CurrentX = ObjMonster1_idle.x;
	var CurrentY = ObjMonster1_idle.y
	instance_destroy(ObjMonster1_idle);
	instance_create_depth(CurrentX,CurrentY,0,ObjMonster1_die);
	if (instance_exists(ObjPlayer1))
	{
		ObjPlayer1.Exp += 100;
		ObjPlayer1.Money += 10;
	} else if (instance_exists(ObjPlayer2))
	{
		ObjPlayer2.Exp += 100;
		ObjPlayer2.Money += 10;
	}
	
}