game_mode = "tetris"
audio_play_sound(tetris_bgm, 1, 1);
view_visible[1] = false
instance_deactivate_object(obj_player)

ui_text = 0;
//grid_square_size = 160;
restart = false;
isSpawned = false;

timer = room_speed * 20;