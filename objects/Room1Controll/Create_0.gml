/// @description Insert description here
// You can write your code in this editor
Round = ROUND1;
instance_deactivate_layer("EnemyRound2");
instance_deactivate_layer("EnemyRound3");
instance_deactivate_layer("EnemyRound4");
instance_deactivate_layer("EnemyRound5");
instance_deactivate_layer("EnemyRound6");
//Round1
MaxEnemy[MONSTER1,ROUND1]=15;
MaxEnemy[MONSTER2,ROUND1]=0;
MaxEnemy[MONSTER3,ROUND1]=0;
MaxEnemy[MONSTER4,ROUND1]=0;
MaxEnemy[MONSTER5,ROUND1]=0;
TotalEnemyAlive[ROUND1] =15; 
CurrentEnemy[ROUND1]=0;
MaxEnemyInRound[ROUND1] = 5;
//Round2
MaxEnemy[MONSTER1,ROUND2]=10;
MaxEnemy[MONSTER2,ROUND2]=4;
MaxEnemy[MONSTER3,ROUND2]=0;
MaxEnemy[MONSTER4,ROUND2]=0;
MaxEnemy[MONSTER5,ROUND2]=0;
TotalEnemyAlive[ROUND2] =14; 
CurrentEnemy[ROUND2]=0;
MaxEnemyInRound[ROUND2] = 5;
//Round3
MaxEnemy[MONSTER1,ROUND3]=3;
MaxEnemy[MONSTER2,ROUND3]=5;
MaxEnemy[MONSTER3,ROUND3]=5;
MaxEnemy[MONSTER4,ROUND3]=0;
MaxEnemy[MONSTER5,ROUND3]=0;
TotalEnemyAlive[ROUND3] =13; 
CurrentEnemy[ROUND3]=0;
MaxEnemyInRound[ROUND3] = 5;
//Round4
MaxEnemy[MONSTER1,ROUND4]=3;
MaxEnemy[MONSTER2,ROUND4]=5;
MaxEnemy[MONSTER3,ROUND4]=8;
MaxEnemy[MONSTER4,ROUND4]=0;
MaxEnemy[MONSTER5,ROUND4]=0;
TotalEnemyAlive[ROUND4] =16; 
CurrentEnemy[ROUND4]=0;
MaxEnemyInRound[ROUND4] = 5;
//Round5
MaxEnemy[MONSTER1,ROUND5]=2;
MaxEnemy[MONSTER2,ROUND5]=12;
MaxEnemy[MONSTER3,ROUND5]=10;
MaxEnemy[MONSTER4,ROUND5]=0;
MaxEnemy[MONSTER5,ROUND5]=0;
TotalEnemyAlive[ROUND5] =24; 
CurrentEnemy[ROUND5]=0;
MaxEnemyInRound[ROUND5] = 5;
//Round6
MaxEnemy[MONSTER1,ROUND6]=0;
MaxEnemy[MONSTER2,ROUND6]=0;
MaxEnemy[MONSTER3,ROUND6]=0;
MaxEnemy[MONSTER4,ROUND6]=1;
MaxEnemy[MONSTER5,ROUND6]=0;
TotalEnemyAlive[ROUND6] =1; 
CurrentEnemy[ROUND6]=0;
MaxEnemyInRound[ROUND6] = 5;
