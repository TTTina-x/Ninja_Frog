x -= spd;
//ideal sprite
sprite_index = spr_eneime;

// bullets hits enemy it lose hp
if(place_meeting(x,y,Obj_bullet) && !invincible){
	HP -=1;
	invincible = true;//invincible for a short time
}

//invincible for a short time
if(invincible){
	timer ++
	if(timer > duration){
		invincible = false;
		timer = 0;
	}
}
//dissapear when it has no hp
if(HP == 0){
	instance_destroy(self);
}

	








