/// @description Insert description here
// You can write your code in this edi
for(i =0; i<10;i++)
	{
	SmallBullet =instance_create_depth(x,y,0,obj_SmallBullet_Enemy);
	DirectionOfSmallBullet = i*36;
        with(SmallBullet)
	    {
	       
		   direction = obj_Skill1_Enemy.DirectionOfSmallBullet ;
		   image_xscale =0.4;
		   image_yscale =0.4;
		   speed = 10;
		   image_angle = direction -90 ;
	    } 
	}