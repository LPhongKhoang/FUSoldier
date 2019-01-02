var _xStartPosition_A = argument[0];
var _yStartPosition_A = argument[1];
var _xPositionFire_B =argument[2];
var _yPositionFire_B =argument[3];
var angle = argument[4];
var x_MidPoint_I = (_xStartPosition_A+ _xPositionFire_B)/2;
var y_MidPoint_I = (_yStartPosition_A+ _yPositionFire_B)/2;
var Distance_IO = point_distance(x_MidPoint_I,y_MidPoint_I,_xStartPosition_A,_yStartPosition_A) * tan(pi/2 - angle*pi/360);
var x_Vector2_IA = _xStartPosition_A - x_MidPoint_I;
var y_Vector2_IA = _yStartPosition_A - y_MidPoint_I;
var Distance_IA = point_distance(_xStartPosition_A,_yStartPosition_A,x_MidPoint_I,y_MidPoint_I)
if(_xStartPosition_A>XPositionFire)
{
	var x_Vector2_OI = -y_Vector2_IA/Distance_IA*Distance_IO;
    var y_Vector2_OI = x_Vector2_IA/Distance_IA*Distance_IO;
}
if(_xStartPosition_A<XPositionFire)
{
	var x_Vector2_OI = y_Vector2_IA/Distance_IA*Distance_IO;
    var y_Vector2_OI = -x_Vector2_IA/Distance_IA*Distance_IO;
}

var x_CenterOfCircle_O =  x_MidPoint_I + x_Vector2_OI;
var y_CenterOfCircle_O =  y_MidPoint_I + y_Vector2_OI;
var x_Vector2_OM = x - x_CenterOfCircle_O;
var y_Vector2_OM = y - y_CenterOfCircle_O;
if(_xStartPosition_A>XPositionFire)
{
	var x_Vector2_MS = y_Vector2_OM/15;
    var y_Vector2_MS = -x_Vector2_OM/15;
}
if(_xStartPosition_A<XPositionFire)
{
	var x_Vector2_MS = -y_Vector2_OM/15;
    var y_Vector2_MS = x_Vector2_OM/15;
}
direction = point_direction(x,y,x+x_Vector2_MS,y+y_Vector2_MS);