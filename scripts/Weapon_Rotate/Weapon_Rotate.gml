x = argument[0].x-10;
y = argument[0].y+10;

image_angle = point_direction(x,y,mouse_x,mouse_y);
image_xscale = 0.5;
image_yscale = 0.5;
if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else 
{
	image_yscale = 1;
}