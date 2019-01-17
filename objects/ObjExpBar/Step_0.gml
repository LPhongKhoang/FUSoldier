
if (instance_exists(GameManager.obj_Player))
{
	 CurrentExp = GameManager.obj_Player.Exp;
	 MaxExp = GameManager.obj_Player.MaxExp;
	if (GameManager.obj_Player.Exp >= GameManager.obj_Player.MaxExp)
    {
		GameManager.obj_Player.Level += 1;
		GameManager.obj_Player.Exp -= GameManager.obj_Player.MaxExp;

		GameManager.obj_Player.HP += 20;
		GameManager.obj_Player.Mana +=10;
		GameManager.obj_Player.CanUpLevelSkill++;
		
		audio_play_sound(LevelUpSound, 0, false);
    }
} 
