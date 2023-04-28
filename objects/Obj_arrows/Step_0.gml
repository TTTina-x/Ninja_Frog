if(timer == 0 && place_meeting(x, y, Obj_avatar)){
	audio_play_sound(Boost,10,false);
	timer = 1;
}
if(timer == 0 && place_meeting(x, y, Obj_avatar2)){
	audio_play_sound(Boost,10,false);
	timer = 1;
}
if(timer >= 1){
	timer++;
}
if(timer >10){
	timer = 0;
}