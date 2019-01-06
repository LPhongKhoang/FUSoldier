if (!instance_exists(ObjArrowLeft)){
//Move in four directions when pressing arrow keys.
var _move = 0;
if keyboard_check(ord("A")) && place_free(x-Speed,y) 
{
	x-= Speed; _move=1;
}

if keyboard_check(ord("D")) && place_free(x+Speed,y) 
{
	x+= Speed; _move=1;
}

if keyboard_check(ord("W"))	&& place_free(x,y-Speed) 
{
	y-= Speed; _move=1;
}

if keyboard_check(ord("S")) && place_free(x,y+Speed) 
{
	y+= Speed; _move=1;
}

if (_move) Action = MOVE;
else Action = IDLE;

sprite_index = View[Action];

// skill
firingdelay = firingdelay -1;
recoil = max(0,recoil - 1);
//skill1
if (mouse_check_button(mb_left)) && (firingdelay < 0) && (Mana>=SKILL1)
{
	Mana -= SKILL1;
	recoil = 4;
	firingdelay = 5;
	with (instance_create_layer(x,y+25,"Bullets",ObjBulletPistol))
	{
		direction = ObjPistol.image_angle + random_range(-5,5);
		image_angle = direction;
		Dam += ObjPlayer1.Dam + ObjPistol.Dam;
	}
}
//skill2
if (mouse_check_button(mb_right)) && (firingdelay < 0) 
{
	if((Mana>=SKILL2) && CurrentSkillIndex == 1)
	{
		Mana -= SKILL2;
	    recoil = 4;
	    firingdelay = 5;
	    bullet = instance_create_layer(x,y,"Bullets",ObjBulletPistol);
	    with (bullet)
	    {
		    direction = ObjPistol.image_angle ;
		    image_angle = direction ;//Spin the bullet in the direction of the shot
		    Dam += ObjPlayer1.Dam + ObjPistol.Dam;
	    }
	    bullet = instance_create_layer(x,y,"Bullets",ObjBulletPistol);
	    with (bullet)
	    {
		    direction = ObjPistol.image_angle +15;
		    image_angle = direction ;//Spin the bullet in the direction of the shot
		    Dam += ObjPlayer1.Dam + ObjPistol.Dam;
	    }
	     bullet = instance_create_layer(x,y,"Bullets",ObjBulletPistol);
	    with (bullet)
	    {
		    direction = ObjPistol.image_angle -15;
		    image_angle = direction ;//Spin the bullet in the direction of the shot
		    Dam += ObjPlayer1.Dam + ObjPistol.Dam;
	    }
	}
	if(SKILL3 < Mana && CurrentSkillIndex ==2)
	{
		Mana -= SKILL1;
	    recoil = 4;
	    firingdelay = 5;
		with(instance_create_layer(x,y,"Bullets",obj_Skill1))
		{
			direction = ObjPistol.image_angle + random_range(-3,3);
		    image_angle = direction-90;
			Dam += ObjPlayer1.Dam + ObjPistol.Dam;
		}
	}
	if(SKILL4 < Mana && CurrentSkillIndex ==3)
	{
		Mana -= SKILL4;
	    recoil = 4;
	    firingdelay = 5;
		with(instance_create_layer(x,y,"Bullets",obj_Skill2))
		{
			direction = ObjPistol.image_angle + random_range(-3,3);
			Dam += ObjPlayer1.Dam + ObjPistol.Dam;
			XPositionFire = mouse_x;
	        YPositionFire = mouse_y;
		    CanFire = true
	       
		}
	}
	if(SKILL5 < Mana && CurrentSkillIndex ==4)
	{
		Mana -= SKILL5;
	    recoil = 4;
	    firingdelay = 5;
		with(instance_create_layer(x,y,"Bullets",obj_Skill3))
		{
			direction = ObjPistol.image_angle + random_range(-3,3);
			Dam += ObjPlayer1.Dam + ObjPistol.Dam;
			image_angle = direction -90;
		}
	}


}
//turn weapon
with (ObjPistol)
{
	x = x - lengthdir_x(ObjPlayer1.recoil,image_angle);
	y = y - lengthdir_y(ObjPlayer1.recoil,image_angle);
	if (image_angle > 0 && image_angle < 90) || (image_angle > 270 && image_angle < 360)
	{
		ObjPlayer1.image_xscale = 1;
	}
	else 
	{
		ObjPlayer1.image_xscale = -1;
	}
}
//check die
if (HP <= 0) 
{
	HP = 0;
	//instance_destroy(ObjPistol);
	//instance_deactivate_object(ObjPlayer1);
	ObjPistol.visible = false;
	ObjPlayer1.visible = false;
}
//check teleport
if mouse_check_button(mb_middle)
{
	if (alarm[0]<0) && place_free(mouse_x,mouse_y) 
	{
		x = mouse_x;
		y = mouse_y;
		alarm[0] = room_speed * CLOCK0;
	}
}
//check increase speed
if keyboard_check_pressed(ord("F")) && alarm[2]<0
{
	if (alarm[1]<0)
	{
		Speed += INCSPEED;
		alarm[2] = room_speed * CLOCK2;
	}
}
}