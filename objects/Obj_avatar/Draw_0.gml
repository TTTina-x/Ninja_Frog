draw_self()

if(global.avatar_vsp = 0 &&hsp = 0 && show = true && room = Level_1 )
{
	draw_sprite(W,0,x,y-30);
	draw_sprite(A,0,x-30,y);
	draw_sprite(D,0,x+30,y);
	
}

if(keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("D")))
{
	show = false;
}