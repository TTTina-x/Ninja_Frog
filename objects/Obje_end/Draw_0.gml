//draw text in the middle
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(x,y,"CONGRAGUATION!",1.75,1.75,0);
draw_text_transformed(x,y+30,"YOU HAVE COMPLELETED ALL LEVELS",1.25,1.25,0);
draw_text_transformed(x,y+60,"(PRESS 'ENTER' TO PLAY AGAIN)",1.05,1.05,0);

//take player bac to the first level
if(keyboard_check(vk_enter)){
	
	room_goto(Level_1);
}








