image_index = 0;

if(mouse_x > 320 && mouse_x < 455 && mouse_y > 290 && mouse_y < 330)
{
	image_index = 1;
	if(mouse_check_button(mb_left))
	{
		room_goto(Level_1)
	}
}