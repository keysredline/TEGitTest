/// @description Insert description here
// You can write your code in this editor

var move_horizontal = keyboard_check(vk_right) - keyboard_check(vk_left)
//show_debug_message(move_horizontal)
var move_vertical = keyboard_check(vk_up) - keyboard_check(vk_down)
//show_debug_message(move_vertical)
x_speed = 0
y_speed = 0
if(move_horizontal ==1){
	x_speed =3
}

else if (move_horizontal == -1){
	x_speed = -3
}

x= x + x_speed

if(move_vertical ==1){
	y_speed = -3
}

else if (move_vertical == -1){
	y_speed = 3
}

y= y + y_speed

if direction > 45 and direction <= 135 and image_index != idle_sp
    image_index = walk_sp;
else if direction > 135 and direction <= 225 and sprite_index != idle_sp
    sprite_index = walk_sp;
else if direction > 225 and direction <= 315 and sprite_index != idle_sp
    sprite_index = walk_sp;
else if sprite_index != idle_sp
    sprite_index = walk_sp;

//collison checking
//h coll
if(place_meeting(x + x_speed, y , objSolid)){
	x_speed = 0;
}