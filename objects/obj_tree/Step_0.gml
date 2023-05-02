var val = int64(image_index)
//shooting bullets
if(val == 8 && shot == false)
{
	instance_create_layer(x,y,"Bullet",Obj_bullet);
	audio_play_sound(Gun,10,false);//sound effect when shoots bullets
	show_debug_message("shoot")
	shot = true
}
else if(val = 7){
	shot = false;
}
show_debug_message(image_index)


//if(timer != 60){
////increment timer by 1
//	timer++
//}
//else if(timer == 60 ){
////shoot
//instance_create_layer(x,y,"Bullet",Obj_bullet);
////reset timer to 0
//timer =0;
//}


