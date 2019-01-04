var _grid = ds_quests;

var i=0; repeat (ds_quests_num)
{
	switch (i)
	{
		#region PAINT
		case quest.q_paint:
		{
			switch (_grid[# 1,i])
			{
				case -1: break; // do nothing
				case 0: //paint
				{
					with(ObjPlayer1)
					{
						var inst = instance_place(x,y,ObjTree);
						IdGreenTree = inst;
						if (inst != noone)
						{
							with(inst)
							{
								image_blend = c_green;
								_grid[# 1,i]++;
							}
						}
					}
				}
				break;
				case 1: //paint
				{
					with(ObjPlayer1)
					{
						var inst = instance_place(x,y,ObjTree);
						if (inst != noone && inst!=IdGreenTree)
						{
							with(inst)
							{
								image_blend = c_red;
								_grid[# 1,i]++;
							}
						}
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
		#region KILL
		case quest.q_kill:
		{
			var NumEnemyKilled = 0; //will add to enemy: if enemy died then NumEnemyKilled++
			switch (_grid[# 1,i])
			{
				case -1: break; // do nothing
				case 0: //kill
				{
					if (NumEnemyKilled == 1) _grid[# 1,i]++;
				}
				break;
				case 1: //kill
				{
					if (NumEnemyKilled == 2) _grid[# 1,i]++;
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



