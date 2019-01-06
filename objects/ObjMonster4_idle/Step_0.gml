if(instance_exists(GameManager.obj_Player))
{
	var Distance = point_distance(x,y,GameManager.obj_Player.x,GameManager.obj_Player.y);
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
				  direction = point_direction(x,y,GameManager.obj_Player.x,GameManager.obj_Player.y)  + random_range(-15,15)
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
}


//Event Die
if (Hp<=0)
{
     instance_destroy();
     Room1Controll.CurrentEnemy[Room1Controll.Round] --;
	 Room1Controll.TotalEnemyAlive[Room1Controll.Round] --;
	 GameManager.obj_Player.Exp += 100;
	 GameManager.obj_Player.Money += 10;	
	    
}


