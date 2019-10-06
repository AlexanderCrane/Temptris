/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y, obj_player) 
{
	c.timer += 600;
	audio_play_sound(hourglass_get,1,0)
	instance_destroy();
}