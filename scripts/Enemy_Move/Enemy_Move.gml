var object =  argument[0];
if (instance_exists(object))
{
	TargetX = object.x - x;
	TargetY = object.y - y;
}
else
{
	TargetX = 0;
	TargetY = 0;
}
var _targetX = sign(TargetX);
var _targetY = sign(TargetY);

if (place_meeting(x+_targetX,y,ObjCollision))
{
	while (!place_meeting(x+sign(_targetX),y,ObjCollision))
	{
		x += sign(_targetX);
	}
	_targetX = 0;
}
x+= _targetX;

if (place_meeting(x,y+_targetY,ObjCollision))
{
	while (!place_meeting(x,y+sign(_targetY),ObjCollision))
	{
		y += sign(_targetY);
	}
	_targetY = 0;
}
y += _targetY;
