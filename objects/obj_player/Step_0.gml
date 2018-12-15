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

//If the player is on the ground, this sets their GroundY variable to their current y position
if(grounded_ == true){
    ground_y_ = y;
}
 
//Sets the Players' depth based on their GroundY. We're using GroundY instead of y so that even when they're in the air, they will display in fornt of and behind the right objects.
depth = -1 * ground_y_;

