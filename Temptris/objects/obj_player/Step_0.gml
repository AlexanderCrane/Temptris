//movement and collision

var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

var spd_x = move_x * spd_max
var spd_y = move_y * spd_max

if place_meeting(x+spd_x,y,par_solid) {
        while !place_meeting(x+sign(spd_x),y,par_solid) {
                 x += sign(spd_x);
        }
        spd_x = 0;
}
x += spd_x;

if place_meeting(x,y+spd_y,par_solid) {
        while !place_meeting(x,y+sign(spd_y),par_solid) {
                 y += sign(spd_y);
        }
        spd_y = 0;
}
y+= spd_y;
