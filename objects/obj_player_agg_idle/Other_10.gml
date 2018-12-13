/// @description Move State

image_speed = 0;
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
var _input_direction = point_direction(0, 0, _x_input, _y_input);
var _attack_input = keyboard_check_pressed(ord("Z"));
var _jump_input = keyboard_check_pressed(ord("X"));
var _evade_input = keyboard_check_pressed(ord("C"));


if _x_input == 0 and _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
}
else {
	image_speed = 0.6;
	if _x_input != 0 {
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
}

if _attack_input == true {
	image_index = 0;
	state_ = player.attack;
}

move_movement_entity(false);
