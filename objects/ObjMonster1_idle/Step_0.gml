if(instance_exists(GameManager.obj_Player))
{
	var Distance = point_distance(x,y,GameManager.obj_Player.x,GameManager.obj_Player.y);
	var CheckPosition = GameManager.obj_Player.x - x;
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
		Enemy_Move_AI(GameManager.obj_Player.x,GameManager.obj_Player.y,2);
	}
	if(Distance<DistanceAttack&& CanFire)
	{
	     //load Animation
		  sprite_index = viewMonster1_attack;
		  if(CheckPosition>=0) image_xscale = -1
		  else image_xscale = 1
		 //Take damage to Player
		  with(GameManager.obj_Player)
		  {
			 HP -= 10;
		  }
		  CanFire = false;
	}
}

//Event Die
if (Hp<=0)
{

     Room1Controll.CurrentEnemy[Room1Controll.Round] --;
	 Room1Controll.TotalEnemyAlive[Room1Controll.Round] --;
	 GameManager.obj_Player.Exp += 100;
	 GameManager.obj_Player.Money += 10;	
	 instance_destroy();
}
    


