if(alarm[0]<=0)
{
	CanSpawn = true;
	alarm[0] = 180;
}
if(Room1Controll.CurrentEnemy[Room1Controll.Round]<Room1Controll.MaxEnemyInRound[Room1Controll.Round])
{
	if(Room1Controll.MaxEnemy[MONSTER2,Room1Controll.Round]>0&&CanSpawn)
	{
		Room1Controll.CurrentEnemy[Room1Controll.Round] ++;
		Room1Controll.MaxEnemy[MONSTER2,Room1Controll.Round]--;
        instance_create_depth(x,y,2,ObjMonster2_idle);	
		CanSpawn = false;
	}
	  
}