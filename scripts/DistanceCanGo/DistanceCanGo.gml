var xStartPos = argument[0];
var yStartPos = argument[1];
var DistanceMax = argument[2];
var Distance = point_distance(xStartPos,yStartPos,x,y)
if(Distance >= DistanceMax)
{
	instance_destroy();
}