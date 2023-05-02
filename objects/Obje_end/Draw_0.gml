//draw text in the middle
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(x,y,"THE WINNER IS:",1.75,1.75,0);

draw_text_transformed(x,y+150,"CONGRAGULATION!",1.25,1.25,0);
draw_text_transformed(x,y+260,"(PRESS 'ENTER' TO PLAY AGAIN)",1.05,1.05,0);

//take player bac to the first level
if(keyboard_check(vk_enter)){
	
	room_goto(Level_1);
}


if(global.avatar_score > global.avatar2_score)
{
	draw_sprite_stretched(spr_avatar,1, x-50, y, 100, 100);
}

if( global.avatar2_score > global.avatar_score)
{
	draw_sprite_stretched(spr_avatar2,1, x-50, y, 100, 100);
}






