randomize();
game_mode = "tetris"
audio_play_sound(tetris_bgm, 1, 1);
view_visible[1] = false
instance_deactivate_object(obj_player)
instance_deactivate_object(obj_temptris)

timer_text = "";
instr_text = "Left & Right arrow keys to move block\n\n\nDown arrow key to speed up\n\n\nSPACEBAR to rotate\n\n\nR to restart\n\n\nKill all the skulls, then fight the Temptris!\n\n\nTry and arrange the dungeon to reach her\nand the skulls!\n\n\nWhen the highest block reaches the Temptris,\nthe dungeon will start!";
//grid_square_size = 160;
restart = false;
isSpawned = false;
countingDown = true;

timer = room_speed * 30;
hp = 6;

gameWin = false;

skullIndex = 0;