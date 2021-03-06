///@description Enemy collision logic
// If:
// 1) Player is attacking
// 2) Current frame of animation is within active frames 
// 3) Target is within range
if( attacker_ == "Player"
	&& image_index == active_frames_ && abs(depth - other.depth) <= ATTACK_RANGE 
	&& abs(y - other.y) <= ATTACK_RANGE) 
{
	// Assign damage
    other.current_hp_ -= damage_;
	
	// Set hit state
    other.is_hit_ = true;
	
	// Trigger hit stun timer
    other.alarm[0] = hit_stun_length_;
	
	// Play sound effect
	audio_play_sound(hit_sound_,10,false);
	hit_ = true;
}