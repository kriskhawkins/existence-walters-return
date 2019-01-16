if(instance_exists(obj_melee_mook) and point_in_rectangle(obj_melee_mook.x, obj_melee_mook.y,left_edge_, top_edge_, right_edge_, bottom_edge_))
{
    has_enemies_ = true;
	show_debug_message("has_enemies");
}
else { 
    has_enemies_ = false;
    is_active_ = false;
	show_debug_message("is_active is false");
}

