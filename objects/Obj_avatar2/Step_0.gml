//mopvement
key_left = keyboard_check(vk_right);
key_right = keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_up);
fire = mouse_check_button(mb_left);


var move = key_left - key_right
global.avatar2_vsp = global.avatar2_vsp + grv;
//check if the player meets wall and if space is pressed 
if (place_meeting(x,y+1,Obj_wall)) && (key_jump)
{
	global.avatar2_vsp = -8;
	audio_play_sound(Jump,10,false);
}

hsp = move * walksp;

// horizon collison

if(place_meeting(x+hsp,y,Obj_wall)){
	while(!place_meeting(x+sign(hsp),y,Obj_wall))
	{ 
		x = x+sign(hsp);
	}
	
	hsp = 0;
}
x = x+ hsp;

// Vertical collison
if(place_meeting(x,y+global.avatar2_vsp,Obj_wall))
{
	while(!place_meeting(x,y+sign(global.avatar2_vsp),Obj_wall))
	{
		y = y +sign(global.avatar2_vsp);
	}
	global.avatar2_vsp = 0;
}

y = y + global.avatar2_vsp

//animation for sprite
if(!place_meeting(x,y+1,Obj_wall)){
	sprite_index = spr_avatar2_jump
	image_speed = 0;
	if(sign(global.avatar2_vsp)>0) image_index = 0; else image_index = 1;
}
else
{ image_speed = 1;
	if(hsp==0)
	{
		sprite_index = spr_avatar2;
	}
else{
	sprite_index = spr_avatar2_run;
}
}
if (hsp != 0) image_xscale = sign(hsp);

//death
//death
if(global.avatar2_hp == 0){
	global.avatar2_death = true;
}

//collison with blue bird
if(place_meeting(x,y,Obj_enemy) && !invincible){
	global.avatar2_hp -=1;
	invincible = true;
	audio_play_sound(Low_Health,10,false)

	
}
//invincible for a short time
if(invincible){
	timer ++;
	if(timer > duration){
		timer = 0;
		invincible = false;
		
	}
}



