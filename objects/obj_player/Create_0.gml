/// Create Player

// Command Skill Timer
keys="";
timeRemove = .9;
timeStep= 1/30;
timeTotal = 0;

// State 
state  = "idle";

// Movement variables
speed_ = 2;
speed_mod_ = 1;
x_speed_ = 0;
y_speed_ = 0;

// Jump variables
z = 0;
z_air_speed = 0;
z_floor = 0;
grav = .2;

// Combat variables
is_attacking_ = false;
attack_type_ = 0;
max_hp_ = 100; 
current_hp_ = max_hp_;
is_hit_ = false;

// Positioning variables
grounded_ = true;
ground_y_ = y;

image_speed = .75;

//// Create camera
//my_camera_ = instance_create_layer(x, y, "Instances", obj_camera);
