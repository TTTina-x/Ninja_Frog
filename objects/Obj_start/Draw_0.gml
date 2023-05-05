draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed(x-10,y,"WELCOME TO \n NINJA FROG!",2.25,2.25,0)
//draw_text_transformed(x-20,y+50,"(PRESS 'ENTER' TO START THE GAME)",1.25,1.25,0)

draw_text_transformed(x,y+300,"USE A OR D TO MOVE, W TO JUMP. COLLECT ALL THE KIWI TO COMPLET LEVEL",1.25,1.25,0)


if(keyboard_check(vk_enter)){
	room_goto(Level_1);
}





