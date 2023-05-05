//If p1 dead draw timer on spawn
if(global.avatar_death == true){
	var val = ((180-Obj_avatar.player_respawn_timer) div 60)+1;
	switch (room){
		case Level_1:
			//use draw_text(spawn location x, spawn location y, val)
			break;
		case level_2:
			break;
		case level_3:
			break;
		case level4:
			break;
		case level5:
			draw_text(64, 556, val);
			break;
		case level6:
			break;
		
	}
}
//If p1 dead draw timer on spawn
if(global.avatar2_death == true){
	var val = ((180-Obj_avatar2.player_respawn_timer) div 60)+1;
	switch (room){
		case Level_1:
			//use draw_text(spawn location x, spawn location y, val)
			break;
		case level_2:
			break;
		case level_3:
			break;
		case level4:
			break;
		case level5:
			draw_text(736, 556, val);
			break;
		case level6:
			break;
		
	}
}