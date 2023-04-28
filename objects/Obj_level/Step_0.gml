
//check player's current level and when they died and sent back to the current level if they died
if (room = Level_1 && global.avatar_death = true)
{
	Obj_avatar.x = 30;
	Obj_avatar.y = 350;
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}
show_debug_message(Obj_avatar.x)
show_debug_message(Obj_avatar.y)

if (room = level_2 && global.avatar_death = true)
{
	room_goto(level_2);
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}

if (room = level_3 && global.avatar_death = true)
{
	room_goto(level_3);
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}


if (room = level4 && global.avatar_death = true)
{
	room_goto(level4);
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}