//collison with enemy. lose 1 hp
if(place_meeting(x,y,Obj_avatar) && !invincible){
	global.avatar_hp -=1;
	invincible = true;
	audio_play_sound(Low_Health,10,false)
	Obj_avatar.sprite_index = spr_hit;

	
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