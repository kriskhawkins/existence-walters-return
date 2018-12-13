event_user(state_);
sprite_index = sprite_[state_, direction_facing_];
length = string_length(keys);

// Key Presses
if keyboard_check_pressed(ord("W"))
{
	keys += "W";
}
if keyboard_check_pressed(ord("D"))
{
	keys += "D";
}
//Timer Increase if Key in Log
if length > 0
	timeTotal += timeStep;

//# of Remembered Keys
var length = string_length(keys);

if timeTotal >= timeRemove
{
	timeTotal = 0;
	keys = string_copy(keys, 2, length-1);
}

// Last Four Buttons and Last Three
var lastFour, lastThree;
var redStrike = "WDDD";
lastFour = string_copy(keys, length-4+1, 4);

if lastFour = redStrike
{
	keys = "";
	timeTotal = 0;
	effect_create_below(ef_explosion, x, y, 1, c_red);
	build_hitbox(spr_explode_hitbox,x,y, 0, 4, [], 2, 0);
}

