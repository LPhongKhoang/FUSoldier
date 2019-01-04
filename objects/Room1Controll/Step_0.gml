/// @description Insert description here
// You can write your code in this editor

if(TotalEnemyAlive[Round]<=0)
{
	Round +=1 ;
}
if(Round = ROUND2)
{
	instance_activate_layer("Round2");
	instance_deactivate_layer("Round1");
}