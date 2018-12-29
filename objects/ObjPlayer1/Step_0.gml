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

if (mouse_check_button(mb_left)) && (firingdelay < 0) && (Mana>=SKILL1)
{
	Mana -= SKILL1;
	recoil = 4;
	firingdelay = 5;
	with (instance_create_layer(x,y,"Bullets",ObjBulletPistol))
	{
		direction = ObjPistol.image_angle + random_range(-3,3);
		image_angle = direction;
		Dam += ObjPlayer1.Dam + ObjPistol.Dam;
	}
}

if (mouse_check_button(mb_right)) && (firingdelay < 0) && (Mana>=SKILL2)
{
	Mana -= SKILL2;
	recoil = 4;
	firingdelay = 5;
	bullet = instance_create_layer(x,y,"Bullets",ObjBulletPistol);
	with (bullet)
	{
		direction = ObjPistol.image_angle ;
		Dam += ObjPlayer1.Dam + ObjPistol.Dam;
	}
	bullet = instance_create_layer(x,y,"Bullets",ObjBulletPistol);
	with (bullet)
	{
		direction = ObjPistol.image_angle +15;
		Dam += ObjPlayer1.Dam + ObjPistol.Dam;
	}
	bullet = instance_create_layer(x,y,"Bullets",ObjBulletPistol);
	with (bullet)
	{
		direction = ObjPistol.image_angle -15;
		Dam += ObjPlayer1.Dam + ObjPistol.Dam;
	}
}

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

if (HP <= 0) 
{
	HP = 0;
	instance_destroy(ObjPistol);
	instance_destroy();
}