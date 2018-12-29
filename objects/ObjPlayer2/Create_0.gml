/// @description Insert description here
// You can write your code in this editor
XAxis = 0;
YAxis = 0;
Speed = 7;

Direction = DOWN;
Action = IDLE;

View[HORIZONTAL,IDLE] = viewPlayer2_idle;
View[HORIZONTAL,MOVE] = viewPlayer2_run;

View[UP,IDLE] = viewPlayer2_idle;
View[UP,MOVE] = viewPlayer2_run;

View[DOWN,IDLE] = viewPlayer2_idle;
View[DOWN,MOVE] = viewPlayer2_run;