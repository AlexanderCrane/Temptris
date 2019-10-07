if c.game_mode = "tetris" {
	c.game_mode = "zelda";
	c.canSpawn = false;
	audio_stop_all();
	audio_play_sound(dungeon_with_intro_bgm, 1, 1);
	view_visible[1] = true;
	instance_deactivate_object(obj_fake_player);
	instance_activate_object(obj_player);
}