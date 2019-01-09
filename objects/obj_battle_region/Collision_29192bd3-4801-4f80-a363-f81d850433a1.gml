if(point_in_rectangle( 
	obj_player.x, obj_player.y, 
	left_edge_+abs(obj_player.sprite_width)/2+10, 
	top_edge_+20, 
	right_edge_-abs(obj_player.sprite_width)/2-10, bottom_edge_-20) 
	&& has_enemies_ == true) 
{	
		is_active_ = true;
}
