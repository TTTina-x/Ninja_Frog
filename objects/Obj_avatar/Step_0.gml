//mopvement
key_left = keyboard_check(ord("D"));
key_right = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("W"));
fire = mouse_check_button(mb_left);


var move = key_left - key_right
global.avatar_vsp = global.avatar_vsp + grv;
//check if the player meets wall and if space is pressed 
if (place_meeting(x,y+1,Obj_wall)) && (key_jump)
{
	global.avatar_vsp = -8;
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
if(place_meeting(x,y+global.avatar_vsp,Obj_wall))
{
	while(!place_meeting(x,y+sign(global.avatar_vsp),Obj_wall))
	{
		y = y +sign(global.avatar_vsp);
	}
	global.avatar_vsp = 0;
}

y = y + global.avatar_vsp

//creat animation for avatar
if(!place_meeting(x,y+1,Obj_wall)){
	sprite_index = spr_jump;
	image_speed = 0;
	if(sign(global.avatar_vsp)>0) image_index = 0; else image_index = 1;
}
else
{ image_speed = 1;
	if(hsp==0)
	{
		sprite_index = spr_avatar;
	}
else{
	sprite_index = spr_run;
}
}
if (hsp != 0) image_xscale = sign(hsp);


//shooting bullets
if(fire && shot = true)
{
	//instance_create_layer(x,y,"Bullet",Obj_bullet);
	audio_play_sound(Gun,10,false);//sound effect when shoots bullets
	shot = false;
	alarm[0] = 20;

}


//collison with blue bird
if(place_meeting(x,y,Obj_enemy) && !invincible){
	global.avatar_hp -=1;
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
//show_debug_message(global.avatar_hp);
//death
if(global.avatar_hp == 0){
	global.avatar_death = true;
}
//if(global.avatar_death && room = Level_1)
//{
//	x = 30;
//	y = 350;
//	global.avatar_death = false;
//}

//killing enemies by step on it
if(place_meeting(x,y + 16, Obj_enemy)){
	audio_play_sound(Hurt,10,false);
	global.avatar_vsp -= 6;//boost player up
	with(instance_nearest(x,y,Obj_enemy))
	{
		self.sprite_index = spr_eneime_hit;
		self.vspeed = 10;//fall down
	}
	

}











