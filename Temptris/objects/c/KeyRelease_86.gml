if game_mode = "tetris"
{view_visible[1] = false;
instance_deactivate_object(obj_player)
}


if game_mode = "zelda"
{view_visible[1] = true;
instance_deactivate_object(obj_fake_player);
instance_activate_object(obj_player)
}