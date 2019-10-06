/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y+spd_y,par_solid) {
        while !place_meeting(x,y+sign(spd_y),par_solid) {
                 y += sign(spd_y);
        }
        spd_y = 0;
		if(!doneOnce){
			c.isSpawned = false;
			doneOnce = true;
			canMove = false;
			canRotate = false;
		}
}
y+= spd_y;


if(canMove)
{
	if keyboard_check_pressed(vk_left)
	{
		x = x - 160;
	}
	if keyboard_check_pressed(vk_right)
	{	
		x = x + 160;
	}
}