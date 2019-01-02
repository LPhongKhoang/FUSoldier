var Distance = point_distance(x,y,ObjPlayer1.x,ObjPlayer1.y);
if(alarm[0] <=0)
{
	
	x_DestinationPatrol = xstart + random_range(-200,200);
	y_DestinationPatrol = ystart + random_range(-200,200);
	x_DestinationAttack = ObjPlayer1.x + random_range(-DistanceChase,DistanceChase);
	y_DestinationAttack = ObjPlayer1.y + random_range(-DistanceChase,DistanceChase);
	alarm[0] = 30;
}
if(alarm[1] <=0)
{
	CanFire = true;
	alarm[1] = 60;
	

}
if(Distance>=DistanceChase)
{
	Enemy_Move_AI(x_DestinationPatrol,y_DestinationPatrol,Speed/2);	   
}
if(Distance>DistanceAttack&&Distance<DistanceChase&&CanFire)
{
	if(Distance <DistanceChaseInAttack)
	{
		Enemy_Move_AI(ObjPlayer1.x,ObjPlayer1.y,Speed*6);
	}	
	else
	{
		Enemy_Move_AI(ObjPlayer1.x,ObjPlayer1.y,Speed*2);
	}
}
if(Distance<DistanceAttack)
{
	 //load Animation
	if( CanFire)//&& End Animaton
    {
	  //Take damage to Player
	  CanFire= false;	   
	}
	else
	{
		 Enemy_Move_AI(x_DestinationAttack,y_DestinationAttack,Speed);
	}
	  
}


