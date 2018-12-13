/// @description On Screen check for Keys

with obj_player_agg_idle
{
	draw_text(20,20, "KeyLog:" +keys);
	draw_text(20,40, "TimeTotal:" + string(timeTotal));
}