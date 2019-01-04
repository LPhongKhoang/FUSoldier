SmallBullet =instance_create_depth(x,y,0,obj_SmallBullet);
with(SmallBullet)
{
	direction = obj_Skill3.direction +90
	image_xscale =0.8;
	image_yscale =0.8;
	speed = 10;
	image_angle = direction;
}
SmallBullet1 =instance_create_depth(x,y,0,obj_SmallBullet);
with(SmallBullet1)
{
	direction = obj_Skill3.direction -90
	image_xscale =0.8;
	image_yscale =0.8;
	speed = 10;
	image_angle = direction;
}
	
