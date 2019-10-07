game_mode = "tetris"
audio_play_sound(tetris_bgm, 1, 1);
view_visible[1] = false
instance_deactivate_object(obj_player)

timer_text = "";
instr_text = "Left & Right arrow keys to move block\n\n\nDown arrow key to speed up\n\n\nSPACEBAR to rotate\n\n\nTry and arrange the dungeon!";
//grid_square_size = 160;
restart = false;
isSpawned = false;

timer = room_speed * 20;