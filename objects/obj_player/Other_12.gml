/// @description Attack Event
var _my_attack = 0;
 
if(is_hit_ == false && current_hp_ > 0) {
    if(attack_type_ == "Basic Punch") {
        sprite_index = spr_player_basic_punch;
        _my_attack = instance_create_depth(x,y,depth,obj_ATK_basic_punch);
    }
    else if(attack_type_ == "Strong Punch") {
        sprite_index = spr_player_strong_punch;
        _my_attack = instance_create_depth(x,y,depth,atk_strong_punch);
    }
}
 
if(attack_type_ != 0) {
    speed_mod_ = 0;
    is_attacking_ = true;
    _my_attack.image_xscale = image_xscale;
    _my_attack.image_speed = image_speed;
    _my_attack.attacker_ = "Player";
}
