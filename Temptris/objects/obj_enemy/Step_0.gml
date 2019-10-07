if place_meeting(x,y,obj_sword) && inv_frames == false
{
	if(isTemptris){
		if(!instance_exists(obj_skull)){
			c.countingDown = false;
			c.gameWin = true;
		} else {
			displayWarning = true;
			alarm[1] = 180;
		}
	} else {
		audio_play_sound(monster_growl_hurt, 1, 0);
		hp -=1;
		inv_frames = true;
		alarm[0] = 60
	}
}
	
if hp <= 0
	{instance_destroy()}
	
if(c.game_mode == "zelda" && !doOnce && canScale)
{
	image_xscale *= 0.5;	
	image_yscale *= 0.5;	
	doOnce = true;
}

