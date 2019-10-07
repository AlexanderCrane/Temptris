oY = 20;
if(c.game_mode == "zelda"){
	draw_set_color(c_white);
	draw_set_font(font1);
	timer_text = ceil(string(c.timer/room_speed));
	draw_text(room_width* (2/5),oY,"Time Left: " + string(timer_text));
	draw_text(room_width*(4/5), oY, "Health: " + string(c.hp));
	draw_text(room_width * (1/10), oY, "Skulls Left: " + string(instance_number(obj_skull)));
	draw_text(room_width * (1/10), room_height-100, "SPACEBAR to Attack!");
}