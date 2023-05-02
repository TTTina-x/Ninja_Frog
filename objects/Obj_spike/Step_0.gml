//collison with enemy. lose 1 hp
if(place_meeting(x,y,Obj_avatar) && !invincible){
	global.avatar_death = true;
	invincible = true;
	audio_play_sound(Low_Health,10,false)
	Obj_avatar.sprite_index = spr_hit;

	
}
if(place_meeting(x,y,Obj_avatar2) && !invincible){
	global.avatar2_death = true;
	invincible = true;
	audio_play_sound(Low_Health,10,false)
	Obj_avatar2.sprite_index = spr_avatar2_hit;

	
}
//invincible for a short time.
if(invincible){
	timer ++;
	if(timer > duration){
		timer = 0;
		invincible = false;
		
	}
}

if(global.avatar_hp == 0){
	global.avatar_death = true;
}