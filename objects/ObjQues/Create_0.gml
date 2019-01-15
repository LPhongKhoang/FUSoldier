enum quest 
{
	q_pick,
	q_kill
}

var quest_array = 
[
	[
		"Pick The Letter",
		0,
		[
			"Some letters are in the gift box, pick them!",
			"The last 2 letters is a secret, you have to kill all the enemy!"
		]
	],
	[
		"Kill enemy",
		0,
		[
			"Kill enemy of round 1", 
			"Kill enemy of round 2", 
			"Good jobs! You have picked all the letters!"
		]
	],
];

ds_quests = create_ds_grid_from_array(quest_array);
ds_quests_num = ds_grid_height(ds_quests);
myTextBox = noone;
