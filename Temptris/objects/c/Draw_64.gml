/// @description Insert description here
// You can write your code in this editor
var oY = 20;

draw_set_color(c_red);
draw_set_font(font1);

if(game_mode == "zelda" && timer > 0){
	ui_text = ceil(string(timer/room_speed));
	draw_text(room_width/2,y+oY,ui_text);
} else if(game_mode == "zelda" && timer <= 0){
	ui_text = "GAME OVER - Restarting";
	draw_text(room_width/2-200,y+oY,ui_text);
}