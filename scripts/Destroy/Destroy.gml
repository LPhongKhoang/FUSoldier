var Object = argument[0];
var second = argument[1];

alarm[0] = second*30;
if(alarm[0]<=0)
{
 instance_destroy(Object);
}
