if place_meeting(x,y,obj_sword) && inv_frames == false
	{
	hp -=1;
	inv_frames = true;
	alarm[0] = 60
	}
	
if hp <= 0
	{instance_destroy()}