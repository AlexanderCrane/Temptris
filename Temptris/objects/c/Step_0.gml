/// @description Insert description here
// You can write your code in this editor

if(!isSpawned && game_mode == "tetris"){
	isSpawned = true;
	instance_create_depth(960, 150, 0, choose(obj_block));
}

if(timer > 0 && game_mode == "zelda"){
	timer--;	
} else if(timer <= 0 && game_mode == "zelda" && !restart){
	audio_stop_all();
	instance_deactivate_all(self);
	audio_play_sound(game_over, 1, 0);
	restart = true;
}

if restart == true && !audio_is_playing(game_over){
	game_restart();	
}