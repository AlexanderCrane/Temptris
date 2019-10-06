game_mode = "tetris"
view_visible[1] = false
instance_deactivate_object(obj_player)

grid_square_size = 160;

isSpawned = false;

//game_grid = ds_grid_create(5, 7);
//ds_grid_clear(game_grid, 0);

for (var i = 0; i < 5; ++i) {
	for (var j = 0; j < 7; ++j) {
		//instance_create_depth(i*grid_square_size+4*grid_square_size,j*grid_square_size+80,0, obj_block); //Offset is because game grid starts a little inside the room.
		//game_grid[# i,j].visible = false;
	}
}

//instance_create_depth(960, 80, 0, obj_block);