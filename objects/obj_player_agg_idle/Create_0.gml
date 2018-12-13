initialize_movement_entity(.5, 1, obj_solid);
global.player_health = 4;

// Command skills
keys = "";
timeRemove = .9;
timeStep = 1/30;
timeTotal = 0;

//Movement Variables
acceleration_ = 0.5;
max_speed_ = 1.5;
roll_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = dir.right;
jumpHeight = 10;
walkXSpeed = 6;
walkYSpeed = 3;

//Room Control
yMinDist = 180;
yMaxDist = 270;
xMinDist = abs(sprite_width / 4);
xMaxDist = abs(room_width - sprite_width /4);

image_speed = 0;

state_ = player.move;

//What serves as States
enum player {
	move,
	attack,
	jump,
	gaurd,
	dodge,
	idle
}

//Direction States
enum dir {
	right,
	up,
	left,
	down
}

// Sprite lookup table
sprite_[player.move, dir.right] = spr_player_agg_walking;
sprite_[player.move, dir.up] = spr_player_agg_walking;
sprite_[player.move, dir.left] = spr_player_agg_walking;
sprite_[player.move, dir.down] = spr_player_agg_walking;

sprite_[player.attack, dir.right] = spr_player_agg_attack;
sprite_[player.attack, dir.up] = spr_player_agg_attack;
sprite_[player.attack, dir.left] = spr_player_agg_attack;
sprite_[player.attack, dir.down] = spr_player_agg_attack;

//sprite_[player.attack]




