if(instance_exists(GameManager.obj_Player))
{
	var Distance = point_distance(x,y,GameManager.obj_Player.x,GameManager.obj_Player.y);
	var CheckPosition = GameManager.obj_Player.x - x;
	if(alarm[0] <=0)
	{
	
		x_DestinationPatrol = xstart + random_range(-200,200);
		y_DestinationPatrol = ystart + random_range(-200,200);
		x_DestinationAttack = GameManager.obj_Player.x + random_range(-DistanceChase,DistanceChase);
		y_DestinationAttack = GameManager.obj_Player.y + random_range(-DistanceChase,DistanceChase);
		alarm[0] = 30;
	}
	if(alarm[1] <=0)
	{
		CanFire = true;
		alarm[1] = 60;
	

	}
	if(Distance>=DistanceChase)
	{
		sprite_index = viewMonster3_move;
		if(direction>0&&direction<=90||direction<360&&direction>270) image_xscale = -1;
		else image_xscale =1
		Enemy_Move_AI(x_DestinationPatrol,y_DestinationPatrol,Speed/2);	   
	}
	if(Distance>DistanceAttack&&Distance<DistanceChase&&CanFire)
	{
		sprite_index = viewMonster3_move;
		if(CheckPosition<=0) image_xscale = 1;
		else image_xscale = -1;
		if(Distance <DistanceChaseInAttack)
		{
			Enemy_Move_AI(GameManager.obj_Player.x,GameManager.obj_Player.y,Speed*6);
		}	
		else
		{
			Enemy_Move_AI(GameManager.obj_Player.x,GameManager.obj_Player.y,Speed*2);
		}
	}
	if(Distance<DistanceAttack)
	{
	 
		if( CanFire)//&& End Animaton
	    {
			//load Animation
			sprite_index = viewMonster3_attack;
			if(CheckPosition<=0) image_xscale = 1;
			else image_xscale = -1;
		  //Take damage to Player
		  with(GameManager.obj_Player)
		  {
			 HP -= 10;
		  }
		   CanFire= false;	   
		}
		else
		{
			if(CheckPosition<=0) image_xscale = 1;
			else image_xscale = -1;
			Enemy_Move_AI(x_DestinationAttack,y_DestinationAttack,Speed);
		}
	  
	}
}



//Event Die
if (HP<=0)
{
     instance_destroy();
     Room1Controll.CurrentEnemy[Room1Controll.Round] --;
	 Room1Controll.TotalEnemyAlive[Room1Controll.Round] --;
	 GameManager.obj_Player.Exp += 100;
	 GameManager.obj_Player.Money += 10;	
	    
}