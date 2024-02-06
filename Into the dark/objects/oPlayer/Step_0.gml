
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_roll = keyboard_check_pressed(vk_space);
key_run = keyboard_check(vk_shift);

var moverl = key_right - key_left;
var moveud = key_down - key_up;
hsp = moverl * walkspeed;
vsp = moveud * walkspeed;
if (key_run)
{
	hsp = moverl * runspeed;
	vsp = moveud * runspeed;
	
}
if (key_roll)
{
	hsp = moverl * walkspeed * rollspeed;
	vsp = moveud * walkspeed * rollspeed;
}

if (place_meeting(x+hsp,y+vsp,oWall))
{
	
	hsp = 0;
	vsp = 0;
}


x = x + hsp;
y = y + vsp;


