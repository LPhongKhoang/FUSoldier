var Distance = point_distance(x,y,ObjPlayer1.x,ObjPlayer1.y);
if(alarm[0] <=0)
{
	
	x_DestinationPatrol = xstart + random_range(-200,200);
	y_DestinationPatrol = ystart + random_range(-200,200);
	x_DestinationAttack = x + random_range(-200,200);
	y_DestinationAttack = y + random_range(-200,200);
	alarm[0] = 30;
}
if(alarm[1] <=0)
{
	CanFire = true;
	alarm[1] = 30;
	

}
if(Distance >DistanceChase)
{
	Enemy_Move_AI(x_DestinationPatrol,y_DestinationPatrol,Speed/2);	   
}
if(Distance >DistanceAttack&&Distance<DistanceChase)
{
	Enemy_Move_AI(ObjPlayer1.x,ObjPlayer1.y,Speed*2);
}
if(Distance <DistanceAttack)
{
    Enemy_Move_AI(x_DestinationAttack,y_DestinationAttack,Speed);
	if(CanFire)
	{
		bullet = instance_create_depth(x,y,0,ObjBulletPistol_Enemy)
		with(bullet)
		{
			direction = point_direction(x,y,ObjPlayer1.x,ObjPlayer1.y) + random_range(-1,1)*15; 
			image_angle = direction;
			
		}
		CanFire= false;
	}
    
}
