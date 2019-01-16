//If the enemy is on the ground, this sets their GroundY variable to their current y position
if(grounded_ == true){
    ground_y_ = y;
}

// Check if enemy is hit, if so play hitstun animation
if(is_hit_ == true){
    sprite_index = spr_melee_mook_hit_stun;
}
else {
    sprite_index = spr_melee_mook_idle
}

if(current_hp_ <= 0)
{
	instance_destroy();
}

//Sets the enemy's depth based on their GroundY. We're using GroundY instead of y so that even when they're in the air, they will display in fornt of and behind the right objects.
depth = -1 * ground_y_;

