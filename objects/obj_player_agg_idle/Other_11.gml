/// @description Attack State

image_speed = 0.8;

if animation_hit_frame(1) 
{
	var _angle = 0;
	var _life = 3;
	var _damage = 1;
	var _knockback = 8;
	var _hitbox = build_hitbox(spr_small_hitbox, x+10, y-19, _angle, _life, [], _damage, _knockback);
	
	switch direction_facing_ 
	{
		case dir.left:
			_hitbox.x -= 31;
		break;
	}

}

if animation_hit_frame(image_number - 1) 
{
	state_ = player.move;
}


