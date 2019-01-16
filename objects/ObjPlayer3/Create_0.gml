/// @description Insert description here
// You can write your code in this editor
XAxis = 0;
YAxis = 0;

//Set speed
Speed = 10;

//Health
MaxHP = 150;
HP = MaxHP;

//Mana
MaxMana = 60;
Mana =20;

//Damage
Dam = 2;

//Coin
Money = 100;

//Level
Level = 1;
Exp = 600;
MaxExp = 1000;

//Move
Action = IDLE;

View[IDLE] = viewPlayer5_idle;
View[MOVE] = viewPlayer5_run;

//Number of Blood, Energy
NumBlood = 0;
NumEnergy = 0;

//Cooldown
firingdelay = 0;
recoil = 0;
alarm[0] = room_speed * CLOCK0;
alarm[1] = room_speed * CLOCK1;

CurrentSkillIndex = 1;
AmountSkillMax = 3;




