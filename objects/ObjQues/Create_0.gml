enum quest 
{
	q_paint,
	q_kill
}

var quest_array = 
[
	[
		"Paint At TestRoom",
		0,
		["Paint a tree green", "Paint a tree red","Done!!! You received more exp!!!"]
	],
	[
		"Kill enemy",
		0,
		["Kill 1 enemy", "Kill 2 enemy", "Done!!! You received more exp!!!"]
	],
];

ds_quests = create_ds_grid_from_array(quest_array);
ds_quests_num = ds_grid_height(ds_quests);
myTextBox = noone;
