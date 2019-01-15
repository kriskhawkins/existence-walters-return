// Store nearest battle region for easy reference in code
var _my_battle_region = instance_nearest(x,y,obj_battle_region);

// Create jump variable
jump = keyboard_check_pressed(vk_space);

#region Movement 
//  Check if player is still alive, if not DESTROY them
if(current_hp_ > 0) {
	// Checks if either the A or D buttons are pressed to make the player move Left or Right.
	x_speed_ = 0;
	if(keyboard_check(ord("A"))) {
	    x_speed_ = -1 * speed_;
	}
	else if(keyboard_check(ord("D"))) {
	    x_speed_ = speed_;
	}
	
	//Checks if either the W or S buttons are pressed to make the player move Up or Down.
	y_speed_ = 0;
	if(grounded_ == true){
	    if(keyboard_check(ord("W"))) {
	        y_speed_ = -1 * speed_;
	    } 
		else if(keyboard_check(ord("S"))) {
	        y_speed_ = speed_;
	    }
	}
	
	if(_my_battle_region.is_active_) {
	    // Check if the player is going to exit the region OR if they're going to collide with a solid object,
		// if so, set their speed to 0
			if(point_in_rectangle(
				x+x_speed_*speed_mod_, y, 
				_my_battle_region.left_edge_ + 10, _my_battle_region.top_edge_, _my_battle_region.right_edge_ - 10, _my_battle_region.bottom_edge_) == false 
				||  place_free(x+x_speed_*speed_mod_, y)==false)
			{
		        x_speed_ = 0;
				show_debug_message("horizontal edge reached");
		    }  
     
		    if(point_in_rectangle(
				x, y+y_speed_*speed_mod_, 
				_my_battle_region.left_edge_, _my_battle_region.top_edge_ + 35, _my_battle_region.right_edge_, _my_battle_region.bottom_edge_ - 35) == false 
				|| place_free(x, y+y_speed_*speed_mod_)==false)
			{
		        y_speed_ = 0;
				show_debug_message("vertical edge reached");
		    }
		}
	
	if(is_attacking_ == false && is_hit_ = false) {
         
	    //If the player is on the ground move them with x_speed_ and y_speed_, otherwise ignore y_speed_
		if(grounded_==true){    
		    if(x_speed_ != 0 && y_speed_ != 0) {
		        x+=x_speed_*speed_mod_*.7;
		        y+=y_speed_*speed_mod_*.7;
		    }
			else if(x_speed_ != 0 || y_speed_ != 0) {
		        x+=x_speed_*speed_mod_;
		        y+=y_speed_*speed_mod_;
		    }
     
		}
		else if(grounded_ == false ) {
		    x+=x_speed_*speed_mod_;
		}
     
	    //Change the direction of the Player's sprite based on the direction they're moving
		if(x_speed_ != 0) {
		    image_xscale = sign(x_speed_ * speed_mod_);
		}
     
	    //Animate the Player based on what they're doing.
		if(x_speed_ == 0 && y_speed_ == 0 && grounded_ == true){
		    speed_mod_ = 1;
		    sprite_index = spr_player_idle;
		}
		else if((x_speed_!=0 || y_speed_ != 0) && sprite_index!=spr_player_walking && grounded_ == true){
		    sprite_index = spr_player_walking;
		}
	}
}
else {
    instance_destroy();
}
#endregion

#region Attack Logic
if(keyboard_check_pressed(ord("J")) && grounded_ == true) {
	attack_type_ = "Basic Punch";
	event_user(2);
}

else if(keyboard_check_pressed(ord("K")) && grounded_ == true) {
	attack_type_ = "Strong Punch";
	event_user(2);
}
#endregion

//If the player is on the ground, this sets their GroundY variable to their current y position
if(grounded_ == true){
    ground_y_ = y;
}
 
//Sets the Players' depth based on their GroundY. We're using GroundY instead of y so that even when they're in the air, they will display in fornt of and behind the right objects.
depth = -1 * ground_y_;

#region Jump Logic
switch (state)
{
	case "idle": 
		if (jump) {
			z_air_speed = 4;
			state = "jump";
		}
		
		break;
	case "jump": 
		// When jumping, player moves up by z_air_speed value
		z -= z_air_speed;
		
		// So long as player z is negative (above the floor), decrement z_air_speed by grav until player is pulled down to zfloor
		if (z < z_floor) {
			z_air_speed -= grav;
		}
		
		// Once z is greater than or equal to floor, reset z values and idle state
		if (z >= z_floor) {
			z = 0;
			z_air_speed = 0;
			state = "idle";
		}
		
		break;
}
#endregion

#region Command Skills
var length = string_length(keys)
			
if length > 0
{
	timeTotal += timeStep;
}
			
if timeTotal >= timeRemove or string_length(keys) > 6
{
	timeTotal = 0;
	keys = string_copy(keys, 2, length-1);
}
			
length = string_length(keys);
var lastFour;
var lastThree;
var redStrike = "ADDD";
var blueShutdown = "AAA";
lastFour = string_copy(keys, length-4+1, 4);
lastThree = string_copy(keys, length-3+1, 3);
			
if lastFour = redStrike
{
	keys = ""; 
	timeTotal = 0;
	effect_create_below(ef_explosion,x,y,1,c_red);
}
			
if lastThree = blueShutdown
{
	keys = "";
	timeTotal = 0;
	effect_create_below(ef_ring,x,y,1,c_aqua);
}
			
if keyboard_check_pressed(ord("A"))
{
	keys += "A";
}
if keyboard_check_pressed(ord("D"))
{
	keys += "D";
}
#endregion