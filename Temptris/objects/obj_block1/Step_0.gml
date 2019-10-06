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
			audio_play_sound(blockfall,1,0)
			canRotate = false;
		}
}
y+= spd_y;

//if(movex && canMove){
//	x = x + 100 * dir;
//	dir = 0;
//	movex = false;
//}
