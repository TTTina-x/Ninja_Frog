//add to player score
if(collect)
{
	audio_play_sound(Click,10,false);
	global.avatar2_score += 1;
	collect = false;
	Obj_cp.all_furit -= 1;
}











