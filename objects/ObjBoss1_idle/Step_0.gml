/// @description Insert description here
// You can write your code in this editor
if(instance_exists(GameManager.obj_Player))
{
	var Distance = point_distance(x,y,GameManager.obj_Player.x,GameManager.obj_Player.y);
	var CheckPosition = GameManager.obj_Player.x - x;
	if(instance_place(x_DestinationAttackMelee,y_DestinationAttackMelee,ObjWall))
	{
		x_DestinationAttackMelee = GameManager.obj_Player.x + random_range(-400 ,400);
		y_DestinationAttackMelee = GameManager.obj_Player.y + random_range(-400,400);
	}
	if(instance_place(x_DestinationAttackRanged,y_DestinationAttackRanged,ObjWall))
	{
		x_DestinationAttackRanged = xstart + random_range(-600 ,600);
		y_DestinationAttackRanged = ystart + random_range(-600 ,600);
	}
	if(alarm[0] <=0)
	{
		x_DestinationAttackRanged = xstart + random_range(-600 ,600);
		y_DestinationAttackRanged = ystart + random_range(-600 ,600);
		x_DestinationAttackMelee = GameManager.obj_Player.x + random_range(-400 ,400);
		y_DestinationAttackMelee = GameManager.obj_Player.y + random_range(-400,400);
		alarm[0] = 150;
	}
	if(alarm[1] <=0)
	{
		CanAttackMelee = true;
		CanAttackRanged =true;
		alarm[1] = 150;
	}
	if(Distance>=DistanceAttackRanged)
	{
		sprite_index = viewBoss1_move;
		if(CheckPosition<=0) image_xscale = -1;
		else image_xscale = 1;  
		Enemy_Move_AI(GameManager.obj_Player.x,GameManager.obj_Player.y,Speed);
	}
	if(Distance <DistanceAttackRanged&&Distance>DistanceAttackMelee)
	{
		if(Distance>DistanceChaseInAttackMelee)
		{
			if(CanAttackRanged)
			{
				if(CurrentSkillRanged ==1)
				{
					var dir = 0;
					sprite_index = viewBoss1_attack3;
					if(CheckPosition<=0) image_xscale = -1;
					else image_xscale = 1;	
					alarm[2] = 10;
					CanAttackRanged =false;
					repeat(24)
					{
						bullet = instance_create_depth(x,y,1,ObjBulletPistol_Enemy)
						with(bullet)
						{
							direction = dir;
							image_angle = direction;
							MaxDistance = 900;
							speed = 15;
							image_angle = direction -90 ;
						}
						dir += 15;
					}
				}
				if(CurrentSkillRanged ==2)
				{
					var dir = point_direction(x,y,GameManager.obj_Player.x,GameManager.obj_Player.y)-30;
					sprite_index = viewBoss1_attack2;
					if(CheckPosition<=0) image_xscale = -1;
					else image_xscale = 1;	
					alarm[2] = 10;
					CanAttackRanged =false;
					repeat(5)
					{
						bullet = instance_create_depth(x,y,1,obj_Skill1_Enemy)
						with(bullet)
						{
							direction = dir;
							image_angle = direction;
							MaxDistance = 900;
							speed = 15;
							MaxDistance = 500;
						}
						dir += 15;
					}
				}
			CurrentSkillRanged +=1;
				
			}
			if(!CanAttackRanged &&alarm[2] <=0)
			{
				sprite_index = viewBoss1_move;
				if(CheckPosition>=0) image_xscale = 1;
				else image_xscale = -1;
				Enemy_Move_AI(x_DestinationAttackRanged,y_DestinationAttackRanged,Speed);
			}
			
		}
		if(Distance <DistanceChaseInAttackMelee&&CanAttackMelee&&Distance>DistanceMin)
		{
			sprite_index = viewBoss1_move;
			if(CheckPosition<=0) image_xscale = -1;
			else image_xscale = 1;
			Enemy_Move_AI(GameManager.obj_Player.x,GameManager.obj_Player.y,Speed*2);
		}

	}
	if(Distance<DistanceAttackMelee)
	{
		if(CanAttackMelee )
		{
			 //load Animation
			  sprite_index = viewBoss1_attack1;
			  if(CheckPosition>=0) image_xscale = 1;
			  else image_xscale = -1;
			 //Take damage to Player
			  with(GameManager.obj_Player)
			  {
				 HP -= 10;
			  }
			  alarm[2] = 10;
			  CanAttackMelee = false;
		}
		if(!CanAttackMelee && alarm[2]<=0)
		{
			sprite_index = viewBoss1_move;
			if(CheckPosition>=0) image_xscale = 1;
			else image_xscale = -1;
			Enemy_Move_AI(x_DestinationAttackMelee,y_DestinationAttackMelee,Speed);
		}
	     
	}
}

if(CurrentSkillRanged >=3)
{
	CurrentSkillRanged =1;
}
if(instance_exists(Explosion_Bomb))
{
	if(distance_to_object(Explosion_Bomb)<Explosion_Bomb.Range)
	{
		HP -= Explosion_Bomb.Dam ;
	}
}
//Event Die
if (HP<=0)
{

     Room1Controll.CurrentEnemy[Room1Controll.Round] --;
	 Room1Controll.TotalEnemyAlive[Room1Controll.Round] --;
	 GameManager.obj_Player.Exp += 100;
	 GameManager.obj_Player.Money += 10;	
	 instance_destroy();
}
    
