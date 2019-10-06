/// @description Insert description here
// You can write your code in this editor
doneOnce = false;
canMove = true;
canRotate = true;
spd_y = 1;

image_speed = 0;

image_index = irandom(sprite_get_number(sprite_index));

//sprite_collision_mask(image_index, true, 0, 0, 0, 0, 0, 0, 0);

//mask_index = image_index