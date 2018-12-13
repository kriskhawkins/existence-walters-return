///@arg sprite
///@arg x
///@arg y
///@arg angle
///@arg frames_duration
///@arg target_array
///@arg damage
///@arg knockback

var _sprite = argument0;
var _x = argument1;
var _y = argument2;
var _angle = argument3;
var _frames_duration = argument4;
var _target_array = argument5;
var _damage = argument6;
var _knockback = argument7;

// Loading instance into hitbox variable so we can customize hitbox as needed
var _hitbox = instance_create_layer(_x, _y, "Instances", obj_small_hitbox);
_hitbox.sprite_index = _sprite;
_hitbox.image_angle = _angle;
_hitbox.alarm[0] = _frames_duration;
_hitbox.targets_ = _target_array;
_hitbox.damage_ = _damage;
_hitbox.knockback_ = _knockback;

return _hitbox;
