/// @description Insert description here
// You can write your code in this editor
Name = "Information Assurance";

XAxis = 0;
YAxis = 0;

//Set speed
Speed = 10;

//Health
MaxHP = 1000;
HP = MaxHP;

//Mana
MaxMana = 100;
Mana =20;

//Damage
Dam = 10;

//Coin
Money = 100;

//Level
Level = 1;
Exp = 600;
MaxExp = 1000;
LevelSkill[1] = 1;
LevelSkill[2] = 1;
LevelSkill[3] = 1;
CanUpLevelSkill = 0;

//Move
Action = IDLE;

View[IDLE] = viewPlayer1_idle;
View[MOVE] = viewPlayer1_run;

//Number of Blood, Energy
NumBlood = 10;
NumEnergy = 10;

//Cooldown
firingdelay = 0;
recoil = 0;
alarm[0] = room_speed * CLOCK0;
alarm[1] = room_speed * CLOCK1;

CurrentSkillIndex = 1;
AmountSkillMax = 3;
// quest
_numletter = 0;
AmountBulletSkill1 =3;
CanSpeedUp = false;






