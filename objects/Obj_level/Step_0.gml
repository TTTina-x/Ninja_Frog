
//check player's current level and when they died and sent back to the current level if they died
if (room = Level_1 && global.avatar_death = true)
{
	Obj_avatar.x = 750;
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

	
	//if(timer != 60){
////increment timer by 1
//	timer++
//}
//else if(timer == 60 ){
////shoot
//instance_create_layer(x,y,"Bullet",Obj_bullet);
////reset timer to 0
//timer =0;
//}
