if(place_meeting(x,y-1,Obj_avatar)||place_meeting(x,y-1,Obj_avatar2))
{
	breakit = true;
}
if(breakit)
{
	shake_timer--;
	x+= random_range(-1,1)
	
	if(shake_timer <= 0)
	{
		vspeed = 8;
		respawn = true;
	
	}
}
//if(respawn){
//	respawn_timer ++
//	if(respawn_timer >respawn_interval)
//	{
//		show_debug_message("back!")
//		x = 556;
//		y = 227;
//		respawn = false;
//	}
//}