/// @description Insert description here
// You can write your code in this editor
var oY = 20;

draw_set_color(c_white);
draw_set_font(font1);

if(game_mode == "zelda" && timer > 0){
	draw_set_color(c_white);
	draw_set_font(font1);
	timer_text = ceil(string(timer/room_speed));
	draw_text(room_width/2,y+oY,timer_text);
} else if(game_mode == "zelda" && timer <= 0){
	draw_set_color(c_red);
	draw_set_font(font1);
	instance_deactivate_all(self);
	lay_id = layer_get_id("Background");
	back_id = layer_background_get_id(lay_id);
	layer_background_blend(back_id, $000000);
	timer_text = "Ran out of time! - Restarting";
	draw_text(room_width/2-300,room_height/2,timer_text);
} else if(game_mode == "tetris") {
	draw_set_color(c_red);
	draw_set_font(font2);
	draw_text(room_width * 1/20, room_height * 1/5, instr_text);	
}