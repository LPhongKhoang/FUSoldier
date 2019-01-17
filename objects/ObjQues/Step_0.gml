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
					_donequest2=1;
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
					}
				}
				break;
				case 1: //kill
				{
					if (Room1Controll.TotalEnemyAlive[ROUND2]<=0)  
					{
						_grid[# 1,i]++;
					}
				}
				case 2: //kill
				{
					if (Room1Controll.TotalEnemyAlive[ROUND3]<=0)  
					{
						_grid[# 1,i]++;
					}
				}
				case 3: //kill
				{
					if (Room1Controll.TotalEnemyAlive[ROUND4]<=0)  
					{
						_grid[# 1,i]++;
					}
				}
				case 4: //kill
				{
					if (Room1Controll.TotalEnemyAlive[ROUND5]<=0)  
					{
						_grid[# 1,i]++;
					}
				}
				case 5: //kill
				{
					if (Room1Controll.TotalEnemyAlive[ROUND6]<=0)  
					{
						_grid[# 1,i]++;
					}
				}
				break;
				case 6:
				{
					_donequest = 1;
				}
				break;
			}
		}
		break;
		#endregion
	}
	i++;
}



