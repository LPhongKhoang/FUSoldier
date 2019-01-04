/// @description Insert description here
// You can write your code in this editor
var Distance = point_distance(x,y,ObjPlayer1.x,ObjPlayer1.y);
if(alarm[0] <=0)
{
	x_DestinationAttack = xstart + random_range(-300,300);
	y_DestinationAttack = ystart + random_range(-300,300);
	alarm[0] = 60;
}
if(alarm[1] <=0)
{
	CanFire = true;
	alarm[1] = 5;
}
if(AmountCurrentBullet >0)
{
	alarm[2] = 60;
}
if(alarm[2]<=0)
{
	AmountCurrentBullet = AmountBulletInTurn;
}
if(Distance<DistanceAttack)
{
	 //load Animation
	if( AmountCurrentBullet>0&&CanFire)//&& End Animaton
    {
		  with(instance_create_depth(x,y,1,ObjBulletPistol_Enemy))
		  {
			  direction = point_direction(x,y,ObjPlayer1.x,ObjPlayer1.y)  + random_range(-15,15)
			  image_angle = direction;
		  }
		  AmountCurrentBullet--;
	     CanFire= false;
	}
	else
	{
		 Enemy_Move_AI(x_DestinationAttack,y_DestinationAttack,Speed);
	}	  
}

//Event Die
if (Hp<=0)
{
     instance_destroy();
     Room1Controll.CurrentEnemy[Room1Controll.Round] --;
	 Room1Controll.TotalEnemyAlive[Room1Controll.Round] --;
	 ObjPlayer1.Exp += 100;
	 ObjPlayer1.Money += 10;	
	    
}


