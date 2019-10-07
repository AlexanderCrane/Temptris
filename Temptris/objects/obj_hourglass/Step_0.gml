/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y, obj_player) 
{
	c.timer += room_speed * 10;
	audio_play_sound(hourglass_get,1,0)
	instance_destroy();
}

if(c.game_mode == "zelda" && !doOnce)
{
	image_xscale *= 0.5;	
	image_yscale *= 0.5;	
	doOnce = true;
}