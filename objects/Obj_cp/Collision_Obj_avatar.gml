

// when player collect all the kiwi, take them to the next level
if (next_level){
	audio_play_sound(Success,10,false)//sound effect when switching levels
	instance_create_depth(0,0,-9999, Obj_fade);
	room_goto(destenation_room);

	

}






