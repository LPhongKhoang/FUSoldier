var Distance = point_distance(x,y,ObjPlayer1.x,ObjPlayer1.y);
if(alarm[0] <=0)
{
	x_DestinationAttack = x + random_range(-500,500);
	y_DestinationAttack = y + random_range(-500,500);
	alarm[0] = 60;
}
if(alarm[1] <=0)
{
	CanFire = true;
	alarm[1] = 5;
}

if(Distance<DistanceAttack)
{
	 //load Animation
	if( CanFire)//&& End Animaton
    {
		  with(instance_create_depth(x,y,1,ObjBulletPistol_Enemy))
		  {
			  direction = point_direction(x,y,ObjPlayer1.x,ObjPlayer1.y)  
			  image_angle = direction;
		  }
	     CanFire= false;
	}
	else
	{
		 Enemy_Move_AI(x_DestinationAttack,y_DestinationAttack,Speed);
	}
	  
}

show_debug_message(string(CanFire))
