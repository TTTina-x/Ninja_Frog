//create animation if player collect
if(place_meeting(x,y,Obj_avatar2))
{
	sprite_index = Collected;
}
//animation ends
if(sprite_index = Collected && image_index >= 6)
{
		image_index = 6;
		image_speed = 0;
}
show_debug_message(score);




