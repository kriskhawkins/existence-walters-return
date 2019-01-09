if(instance_exists(obj_melee_mook) 
	&& point_in_rectangle(obj_melee_mook.x, obj_melee_mook.y,
	left_edge_, top_edge_, right_edge_, bottom_edge_))
{
    has_enemies_ = true;
}
else { 
    has_enemies_ = false;
    is_active_ = false;
}