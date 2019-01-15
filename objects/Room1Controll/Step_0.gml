/// @description Insert description here
// You can write your code in this editor

if(TotalEnemyAlive[ROUND1]<=0)
{
	instance_deactivate_layer("Block1");
	instance_deactivate_layer("EnemyRound1");
	instance_activate_layer("EnemyRound2");
	if(Round == ROUND2)
	{
	    instance_activate_layer("Block2");
	}
	else
	{
		instance_deactivate_layer("Block2");
	}
}
if(TotalEnemyAlive[ROUND2]<=0)
{
	instance_deactivate_layer("Block2");
	instance_deactivate_layer("Block3");
	instance_deactivate_layer("Block5");
	instance_deactivate_layer("EnemyRound2");
	instance_activate_layer("EnemyRound3");
    if(Round == ROUND3)
	{
	    instance_activate_layer("Block5");
	}
	else
	{
		instance_deactivate_layer("Block5");
	}
}
if(TotalEnemyAlive[ROUND3]<=0)
{
	instance_deactivate_layer("Block5");
	instance_deactivate_layer("Block6");
	instance_deactivate_layer("Block7");
	instance_deactivate_layer("EnemyRound3");
	instance_activate_layer("EnemyRound4");
    if(Round == ROUND4)
	{
		instance_activate_layer("Block7");
	}
	else
	{
		instance_deactivate_layer("Block7");
	}
}
if(TotalEnemyAlive[ROUND4]<=0)
{
	instance_deactivate_layer("Block8");
	instance_deactivate_layer("Block9");
	instance_deactivate_layer("EnemyRound4");
	instance_activate_layer("EnemyRound5");
    if(Round == ROUND5)
	{
		instance_activate_layer("Block9");
	}
	else
	{
		instance_deactivate_layer("Block9");
	}
}
if(TotalEnemyAlive[ROUND5]<=0)
{
	instance_deactivate_layer("Block9");
	instance_deactivate_layer("Block11");
	instance_deactivate_layer("Block12");
	instance_deactivate_layer("EnemyRound5");
	instance_activate_layer("EnemyRound6");
    if(Round == ROUND6)
	{
		instance_activate_layer("Block12");
	}
	else
	{
		instance_deactivate_layer("Block12");
	}
}
if(TotalEnemyAlive[ROUND6]<=0)
{
	//win;
}
