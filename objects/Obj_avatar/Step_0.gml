
//mopvement
key_left = keyboard_check(ord("D"));
key_right = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("W"));
fire = mouse_check_button(mb_left);


//var move = key_left - key_right
global.avatar_vsp = global.avatar_vsp + grv;
//check if the player meets wall and if space is pressed 
if (place_meeting(x,y+1,Obj_wall)) && (key_jump)
{
	global.avatar_vsp = -8;
	audio_play_sound(Jump,10,false);
}
//Horizontal movement
if(key_left){
	hsp = walksp*1;
}
else if(key_right){
	hsp = walksp*-1;
}
else{
	hsp = 0;
}
//hsp = move * walksp;

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
if(!place_meeting(x,y+1,Obj_wall)){//If not on floor, use jump sprite
	sprite_index = spr_jump;
	image_speed = 0;
	if(sign(global.avatar_vsp)>0) image_index = 0; else image_index = 1;
}
else if(key_left == true || key_right == true){
	image_speed = 1;
	sprite_index = spr_run;
}
else{
	image_speed = 1;
	sprite_index = spr_avatar;
}
//{ image_speed = 1;
//	if(hsp==0)
//	{
//		sprite_index = spr_avatar;
//		spriteState = 1;
//	}
//else{
//	sprite_index = spr_run;
//	spriteState = 2;
//}
//}
if (hsp != 0) image_xscale = sign(hsp);
//show_debug_message(spriteState);


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
if(collision_rectangle(x-16, y+16, x+16, y+18, Obj_enemy, false, true) && global.avatar_vsp >0){
	show_debug_message("Enemy Hit");
	audio_play_sound(Hurt,10,false);
	global.avatar_vsp -= 12;//boost player up
	var temp = instance_nearest(x, y, Obj_enemy);
	temp.sprite_index = spr_eneime_hit;
	temp.vspeed = 10;
	//with(instance_nearest(x,y,Obj_enemy))
	//{
	//	self.sprite_index = spr_eneime_hit;
	//	self.vspeed = 10;//fall down
	//}
}
//steps on other player
if(collision_rectangle(x-16, y+16, x+16, y+20, Obj_avatar2, false, true) && global.avatar_vsp >0){
    show_debug_message("avatar1 Hit");
    audio_play_sound(Hurt,10,false);
    global.avatar_vsp -= 12;//boost player up
    var temp = instance_nearest(x, y, Obj_avatar2);
    temp.sprite_index = spr_avatar2_hit;
    temp.vspeed = 10;
	
	
}

if(collision_rectangle(x-16, y+16, x+16, y+20, obj_tree, false, true) && global.avatar_vsp >0){
    show_debug_message("Enemy Hit");
    audio_play_sound(Hurt,10,false);
    global.avatar_vsp -= 12;//boost player up
    var temp = instance_nearest(x, y, obj_tree);
    temp.sprite_index = spr_tree_hit;
    temp.vspeed = 10;
}