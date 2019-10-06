/// @description Insert description here
// You can write your code in this editor

if((!isSpawned) && game_mode == "tetris"){
	isSpawned = true;
	instance_create_depth(960, 80, 0, obj_block);
}