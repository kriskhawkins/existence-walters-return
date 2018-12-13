/// @description Insert description here
// You can write your code in this editor
if !recently_hit
{
	show_debug_message("HIT")
	health_ -= other.damage_;
	recently_hit = true;
	alarm[0] = 1 * room_speed;
}