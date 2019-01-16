var _grid = ds_quests;

var i=0; repeat (ds_quests_num)
{
	switch (i)
	{
		#region PICK
		case quest.q_pick:
		{
			switch (_grid[# 1,i])
			{
				case -1: break; // do nothing
				case 0: //pick
				{
					if (ObjPlayer1._numletter == 5)
						_grid[# 1,i]++;
				}
				break;
				case 1: //done
				{
					//
				}
				break;
			}
		}
		break;
		#endregion
		#region KILL
		case quest.q_kill:
		{
			switch (_grid[# 1,i])
			{
				case -1: break; // do nothing
				case 0: //kill
				{
					if (Room1Controll.TotalEnemyAlive[ROUND1]<=0) 
					{
						_grid[# 1,i]++;
						// do with "J"
					}
				}
				break;
				case 1: //kill
				{
					if (Room1Controll.TotalEnemyAlive[ROUND2]<=0)  
					{
						_grid[# 1,i]++;
						// do with "S"
					}
				}
				break;
				case 2:
				{
					ObjPlayer1.Exp++;
				}
				break;
			}
		}
		break;
		#endregion
	}
	i++;
}



