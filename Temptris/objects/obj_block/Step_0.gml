/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y+spd_y,par_solid) {
        while !place_meeting(x,y+sign(spd_y),par_solid) {
                 y += sign(spd_y);
        }
        spd_y = 0;
		if(!doneOnce){
			c.isSpawned = false;
			audio_play_sound(blockfall,1,0)
			doneOnce = true;
			canMove = false;
			canRotate = false;
		}
		
		if(y <= 270){
			toggle_game_mode();
		}
}
y+= spd_y;

if(place_meeting(x,y,obj_lava) && !canMove) {
	with instance_place(x,y,obj_lava)
    {
        instance_destroy()
    }
}

if(canMove)
{
	if(keyboard_check_pressed(vk_left) && c.game_mode == "tetris" && !place_meeting(x-160,y,par_solid))
	{
		x = x - 160;
	}
	if(keyboard_check_pressed(vk_right) && c.game_mode == "tetris" && !place_meeting(x+160,y,par_solid))
	{	
		x = x + 160;
	}
}