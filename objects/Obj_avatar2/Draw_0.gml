draw_self()

if(global.avatar2_vsp = 0 && hsp = 0 && show = true && room = Level_1 )
{
	draw_sprite(UP,0,x,y-30);
	draw_sprite(LEFT,0,x-30,y);
	draw_sprite(RIGHT,0,x+30,y);
	
}

if(keyboard_check(vk_up)||keyboard_check(vk_left)||keyboard_check(vk_right))
{
	show = false;
}