if(fired == false && mouse_check_button_pressed(mb_right)){//Fire hook w/ right click
	//fired = true;
	direction = point_direction(x, y, mouse_x, mouse_y);
	speed = 3;
}