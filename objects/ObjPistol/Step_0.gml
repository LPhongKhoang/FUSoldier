x = ObjPlayer1.x;
y = ObjPlayer1.y + 25;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else 
{
	image_yscale = 1;
}
