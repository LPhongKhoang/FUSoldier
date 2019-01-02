var Player = argument[0];
var Skill = argument[1];
var Enemy = argument[2];
var EnemyDie = argument[3];
with(Enemy)
{
	Hp -= Skill.Dam;
    instance_destroy(Skill);
    if (Hp<=0)
    {
	    var CurrentX = Enemy.x;
	    var CurrentY = Enemy.y
	    instance_destroy(Enemy);
	    instance_create_depth(CurrentX,CurrentY,0,EnemyDie);
	    Player.Exp += 100;
	    Player.Money += 10;
    }
}