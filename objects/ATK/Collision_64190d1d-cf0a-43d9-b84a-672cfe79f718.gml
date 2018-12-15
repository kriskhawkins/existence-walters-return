/// @description Player collision logic
// If:
// 1) Enemy is attacking
// 2) Current frame of animation is within active frames 
// 3) Target is within range
if( attacker_ == "Enemy"
	&& image_index == active_frames_ && abs(depth - other.depth) <= ATTACK_RANGE 
	&& abs(y - other.y) <= LAYER_SIZE) 
{
	// Assign damage
    other.current_hp_ -= damage_;
	
	// Set hit state
    other.is_hit_ = true;
	
	// Trigger hit stun timer
    other.alarm[3] = hit_stun_length_;
}