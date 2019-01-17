/// @description Insert description here
// You can write your code in this editor
LimitDistance(xstart,ystart,MaxDistance);
image_angle = direction -90 ;
if(GameManager.obj_Player.LevelSkill[1]%5 !=0 )
{
	Dam = 10 + 5*(GameManager.obj_Player.LevelSkill[1]-1)  ;
}
if(GameManager.obj_Player.LevelSkill[1]%5 ==0 )
{
	GameManager.obj_Player.AmountBulletSkill1 = 3 + GameManager.obj_Player.LevelSkill[1]/5;
}
