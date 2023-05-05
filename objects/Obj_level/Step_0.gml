//check player's current level and when they died and sent back to the current level if they died
//level 1
if (room = Level_1 && global.avatar_death = true && Obj_avatar.player_respawn_timer <179)
{
	Obj_avatar.x = 999;
	Obj_avatar.y = 160;
	global.avatar_vsp = 0;
	//audio_play_sound(Again,10,false);
	
}
if (room = Level_1 && global.avatar2_death = true && Obj_avatar2.player_respawn_timer <179)
{
	Obj_avatar2.x = 999;
	Obj_avatar2.y = 160;
	global.avatar2_vsp = 0;
	//audio_play_sound(Again,10,false);
}
//level 2
if (room = level_2 && global.avatar_death = true && Obj_avatar.player_respawn_timer <179)
{
	Obj_avatar.x = 999;
	Obj_avatar.y = 450;
	global.avatar_vsp = 0;
	//global.avatar_death = false;
	//audio_play_sound(Again,10,false);
}
if (room = level_2 && global.avatar2_death = true && Obj_avatar2.player_respawn_timer <179)
{
	Obj_avatar2.x = 999;
	Obj_avatar2.y = 450;
	global.avatar2_vsp = 0;
	//global.avatar2_death = false;
	//audio_play_sound(Again,10,false);
}

//level3
if (room = level_3 && global.avatar_death = true && Obj_avatar.player_respawn_timer <179)
{
	Obj_avatar.x = 999;
	Obj_avatar.y = 375;
	global.avatar_vsp = 0;
	//global.avatar_death = false;
	//audio_play_sound(Again,10,false);
}

if (room = level_3 && global.avatar2_death = true && Obj_avatar2.player_respawn_timer <179)
{
	Obj_avatar2.x = 999;
	Obj_avatar2.y = 240;
	global.avatar2_vsp = 0;
	//global.avatar2_death = false;
	//audio_play_sound(Again,10,false);
}

//level 4
if (room = level4 && global.avatar_death = true && Obj_avatar.player_respawn_timer <179)
{
	Obj_avatar.x = 999;
	Obj_avatar.y = 455;
	global.avatar_vsp = 0;
	//global.avatar_death = false;
	//audio_play_sound(Again,10,false);
}

if (room = level4 && global.avatar2_death = true && Obj_avatar2.player_respawn_timer <179)
{
	Obj_avatar2.x = 999;
	Obj_avatar2.y = 455;
	global.avatar2_vsp = 0;
	//global.avatar2_death = false;
	//audio_play_sound(Again,10,false);
}

//level 5
if (room = level5 && global.avatar_death = true && Obj_avatar.player_respawn_timer <179)
{
	Obj_avatar.x = 999;
	Obj_avatar.y = 556;
	global.avatar_vsp = 0;
	//global.avatar_death = false;
	
}

if (room = level5 && global.avatar2_death = true && Obj_avatar2.player_respawn_timer <179)
{
	Obj_avatar2.x = 999;
	Obj_avatar2.y = 536;
	global.avatar2_vsp = 0;
	//global.avatar2_death = false;

}

//level 6
if (room = level6 && global.avatar_death = true && Obj_avatar.player_respawn_timer <179)
{
	Obj_avatar.x = 999;
	Obj_avatar.y = 30;
	global.avatar_vsp = 0;
	//global.avatar_death = false;
	//audio_play_sound(Again,10,false);
}

if (room = level6 && global.avatar2_death = true && Obj_avatar2.player_respawn_timer <179)
{
	Obj_avatar2.x = 999;
	Obj_avatar2.y = 30;
	global.avatar2_vsp = 0;
	//global.avatar2_death = false;
	//audio_play_sound(Again,10,false);
}
	
if(global.avatar_death && room = Level_1)
{
	
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		global.avatar_death = false;
		Obj_avatar.x = 30;
		Obj_avatar.y = 160;
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(global.avatar2_death && room = Level_1)
{
	instance_create_layer(30,160,"Bullet",Obj_countdown)
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
		global.avatar2_death = false;
		Obj_avatar2.x = 750;
		Obj_avatar2.y = 160;
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(global.avatar_death && room = level_2)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		global.avatar_death = false;
		Obj_avatar.x = 32;
		Obj_avatar.y = 450
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(global.avatar2_death && room = level_2)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
			global.avatar2_death = false;
		Obj_avatar2.x = 62;
		Obj_avatar2.y = 450
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(global.avatar_death && room = level_3)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		global.avatar_death = false;
		Obj_avatar.x = 60;
		Obj_avatar.y = 375;
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(global.avatar2_death && room = level_3)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
			global.avatar2_death = false;
		Obj_avatar2.x = 755;
		Obj_avatar2.y = 240
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(global.avatar_death && room = level4)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		global.avatar_death = false;
		Obj_avatar.x = 73;
		Obj_avatar.y = 455;
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(global.avatar2_death && room = level4)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
			global.avatar2_death = false;
		Obj_avatar2.x = 755;
		Obj_avatar2.y = 455
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(global.avatar_death && room = level5)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on 5")
	show_debug_message(Obj_avatar.player_respawn_timer)
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		global.avatar_death = false;
		Obj_avatar.x = 64;
		Obj_avatar.y = 556;
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
		show_debug_message(Obj_avatar.player_respawn_timer)
		//audio_play_sound(Again,10,false);
		////show_debug_message("test")
	//	Obj_avatar.respawn = false;
	}
}
//show_debug_message(Obj_avatar.x)
//show_debug_message(Obj_avatar.y)
if(global.avatar2_death && room = level5)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
			global.avatar2_death = false;
		Obj_avatar2.x = 736;
		Obj_avatar2.y = 556
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}


if(global.avatar_death && room = level6)
{
	Obj_avatar.vspeed = 0;
	Obj_avatar.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar.player_respawn_timer > Obj_avatar.player_respawn_interval)
	{
		global.avatar_death = false;
		Obj_avatar.x = 32;
		Obj_avatar.y = 30;
		audio_play_sound(Next_level,10,false)
		Obj_avatar.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}

if(global.avatar2_death && room = level6)
{
	Obj_avatar2.vspeed = 0;
	Obj_avatar2.player_respawn_timer++;
	show_debug_message("timer on")
	if(Obj_avatar2.player_respawn_timer > Obj_avatar2.player_respawn_interval)
	{
			global.avatar2_death = false;
		Obj_avatar2.x = 768;
		Obj_avatar2.y = 30
		audio_play_sound(Next_level,10,false)
		Obj_avatar2.player_respawn_timer = 0;
	//	Obj_avatar.respawn = false;
	}
}
