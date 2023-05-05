
//check player's current level and when they died and sent back to the current level if they died
//level 1
if (room = Level_1 && global.avatar_death = true)
{
	Obj_avatar.x = 30;
	Obj_avatar.y = 160;
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
	
}
if (room = Level_1 && global.avatar2_death = true)
{
	Obj_avatar2.x = 750;
	Obj_avatar2.y = 160;
	global.avatar2_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}
//level 2
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

//level3
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

//level 4
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

//level 5
if (room = level5 && global.avatar_death = true)
{
	Obj_avatar.x = 64;
	Obj_avatar.y = 556;
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}

if (room = level5 && global.avatar2_death = true)
{
	Obj_avatar2.x = 736;
	Obj_avatar2.y = 536;
	global.avatar2_death = false;
	global.avatar2_hp = 3;
	audio_play_sound(Again,10,false);
}

//level 6
if (room = level6 && global.avatar_death = true)
{
	Obj_avatar.x = 32;
	Obj_avatar.y = 30;
	global.avatar_death = false;
	global.avatar_hp = 3;
	audio_play_sound(Again,10,false);
}

if (room = level6 && global.avatar2_death = true)
{
	Obj_avatar2.x = 768;
	Obj_avatar2.y = 30;
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
		Obj_avatar.y = 160;
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(Obj_avatar2.y > room_height && room = Level_1)
{
	instance_create_layer(30,160,"Bullet",Obj_countdown)
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
		
		Obj_avatar2.x = 750;
		Obj_avatar2.y = 160;
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

if(Obj_avatar.y > room_height && room = level_3)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		
		Obj_avatar.x = 60;
		Obj_avatar.y = 375;
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(Obj_avatar2.y > room_height && room = level_3)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
		
		Obj_avatar2.x = 105;
		Obj_avatar2.y = 375;
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(Obj_avatar.y > room_height && room = level4)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		
		Obj_avatar.x = 73;
		Obj_avatar.y = 455;
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(Obj_avatar2.y > room_height && room = level4)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
		
		Obj_avatar2.x = 755;
		Obj_avatar2.y = 455
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(Obj_avatar.y > room_height && room = level5)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		
		Obj_avatar.x = 64;
		Obj_avatar.y = 556;
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(Obj_avatar2.y > room_height && room = level5)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
		
		Obj_avatar2.x = 736;
		Obj_avatar2.y = 556
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}


if(Obj_avatar.y > room_height && room = level6)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		
		Obj_avatar.x = 32;
		Obj_avatar.y = 30;
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(Obj_avatar2.y > room_height && room = level6)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
		
		Obj_avatar2.x = 768;
		Obj_avatar2.y = 30
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}
