var Distance = point_distance(x,y,ObjPlayer1.x,ObjPlayer1.y);
var CheckPosition = ObjPlayer1.x - x;
if(alarm[0] <=0)
{
	CanFire = true;
	alarm[0] = 30;
}
if(Distance <DistanceChase&&Distance>DistanceAttack)
{
	sprite_index = viewMonster1_move;
	if(CheckPosition<=0) image_xscale = 1
	else image_xscale = -1
	Enemy_Move_AI(ObjPlayer1.x,ObjPlayer1.y,2);
}
if(Distance<DistanceAttack&& CanFire)
{
     //load Animation
	  sprite_index = viewMonster1_attack;
	  if(CheckPosition>=0) image_xscale = -1
	  else image_xscale = 1
	 //Take damage to Player
	  with(ObjPlayer1)
	  {
		 HP -= 10;
	  }
	  CanFire = false;
}
//Event Die
if (Hp<=0)
{
     instance_destroy();

	 ObjPlayer1.Exp += 100;
	 ObjPlayer1.Money += 10;	
	    
}
    


