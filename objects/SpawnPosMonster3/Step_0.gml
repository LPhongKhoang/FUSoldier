/// @description Insert description here
// You can write your code in this editor
x_Pos = x + random_range(-100,100);
y_Pos = y + random_range(-100,100);
if(alarm[0]<=0)
{
	CanSpawn = true;
	alarm[0] = 90;
}
if(Room1Controll.CurrentEnemy[Room1Controll.Round]<Room1Controll.MaxEnemyInRound[Room1Controll.Round])
{
	if(Room1Controll.MaxEnemy[MONSTER3,Room1Controll.Round]>0&&CanSpawn)
	{
		Room1Controll.CurrentEnemy[Room1Controll.Round] ++;
		Room1Controll.MaxEnemy[MONSTER3,Room1Controll.Round]--;
        instance_create_depth(x_Pos,y_Pos,1,ObjMonster3_idle);	
		CanSpawn = false;
	}
	  
}