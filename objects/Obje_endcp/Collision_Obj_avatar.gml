if (score >= 5 ){
	audio_play_sound(Success,10,false);
	instance_create_depth(0,0,-9999, Obj_fade);
	room_goto(room_end);
	
}




