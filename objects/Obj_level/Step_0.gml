
//check player's current level and when they died and sent back to the current level if they died
if (room = Level_1 && global.avatar_death = true)
{
	Obj_avatar.x = 30;
	Obj_avatar.y = 350
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
	
	
	
}
if (room = Level_1 && global.avatar2_death = true)
{
	Obj_avatar2.x = 750;
	Obj_avatar2.y = 350;
	global.avatar2_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}
if (room = level_2 && global.avatar_death = true)
{
	Obj_avatar.x = 32;
	Obj_avatar.y = 450;
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}
if (room = level_2 && global.avatar2_death = true)
{
	Obj_avatar2.x = 62;
	Obj_avatar2.y = 450;
	global.avatar2_death = false;
	global.avatar2_hp = 3;
	audio_play_sound(Again,10,false);
}


if (room = level_3 && global.avatar_death = true)
{
	Obj_avatar.x = 60;
	Obj_avatar.y = 375;
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}

if (room = level_3 && global.avatar2_death = true)
{
	Obj_avatar2.x = 755;
	Obj_avatar2.y = 240;
	global.avatar2_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}


if (room = level4 && global.avatar_death = true)
{
	Obj_avatar.x = 73;
	Obj_avatar.y = 455;
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}

if (room = level4 && global.avatar2_death = true)
{
	Obj_avatar2.x = 755;
	Obj_avatar2.y = 455;
	global.avatar2_death = false;
	global.avatar2_hp = 3;
	audio_play_sound(Again,10,false);
}

	
if(Obj_avatar.y > room_height && room = Level_1)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		
		Obj_avatar.x = 30;
		Obj_avatar.y = 350
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(Obj_avatar2.y > room_height && room = Level_1)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
		
		Obj_avatar2.x = 750;
		Obj_avatar2.y = 350
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(Obj_avatar.y > room_height && room = level_2)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		
		Obj_avatar.x = 32;
		Obj_avatar.y = 450
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(Obj_avatar2.y > room_height && room = level_2)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
		
		Obj_avatar2.x = 62;
		Obj_avatar2.y = 450
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}