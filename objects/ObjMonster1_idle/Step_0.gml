var Distance = point_distance(x,y,ObjPlayer1.x,ObjPlayer1.y);
if(alarm[0] <=0)
{
	CanFire = true;
	alarm[0] = 30;
	

}
if(Distance <DistanceChase&&Distance>DistanceAttack)
{
	Enemy_Move_AI(ObjPlayer1.x,ObjPlayer1.y,Speed );
}
if(Distance<DistanceAttack)
{
  //load Animation
  if(Distance <= DistanceAttack&& CanFire)//&& End Animaton
  {
	  //Take damage to Player
  }
    
}
