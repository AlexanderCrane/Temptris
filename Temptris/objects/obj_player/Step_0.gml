#region Movement and Collision

var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

var spd_x = move_x * spd_max
var spd_y = move_y * spd_max

if place_meeting(x+spd_x,y,par_solid) {
        while !place_meeting(x+sign(spd_x),y,par_solid) {
                 x += sign(spd_x);
        }
        spd_x = 0;
}
x += spd_x;

if place_meeting(x,y+spd_y,par_solid) {
        while !place_meeting(x,y+sign(spd_y),par_solid) {
                 y += sign(spd_y);
        }
        spd_y = 0;
}
y+= spd_y;

if(place_meeting(x,y,obj_lava) && c.game_mode == "zelda") {
	if(!c.restart){
		audio_play_sound(game_over, 1, 0);
		c.restart = true;
	}

	if(c.restart == true && !audio_is_playing(game_over)){
		game_restart();	
	}	
}

if keyboard_check(vk_up)
{face = 1}

if keyboard_check(vk_left)
{face = 2}

if keyboard_check(vk_down)
{face = 3}

if keyboard_check(vk_right)
{face = 4}

if face == 1
	{
		sprite_index = spr_char_u
	}

if face == 2
	{
		sprite_index = spr_char_l
	}

if face == 3
	{
		sprite_index = spr_char_d
	}

if face == 4
	{
		sprite_index = spr_char_r
	}
	
if (move_x != 0) or (move_y != 0)
	{image_speed = 3}
	else
	{image_speed = 0
		image_index = 0}
		
#endregion

//Sword
if !instance_exists(obj_sword)
{
if keyboard_check_pressed(vk_space)
	{
		instance_create_depth(x,y,depth-1,obj_sword)
	}
}

if place_meeting(x,y,obj_enemy) && (inv_frames = false)
	{
	hp -= 1
	inv_frames = true
	alarm[0] = 120	
	}
