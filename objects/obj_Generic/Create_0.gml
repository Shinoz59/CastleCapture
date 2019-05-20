/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

dx = 0; // velocity
dy = 0;

enum facing_direction {
	Left = 0,
	Right = 1
};

enum collision_side {
	Left = 0,
	Right = 1,
	Top = 2,
	Bottom = 3
};

enum Object_State { // For state machine stuff.
	Idle = 0,
	Exploring = 2,
	HitStun = 3,
	Fleeing = 4,
	Attacking = 5,
	Resting = 6,
	Dying = 7,
	Capturing = 8
};

// sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
facingDirection = facing_direction.Left;
state = Object_State.Idle;
canJump = false;
v_speed = 0;
h_speed = 0;
walkSpeed = 4;
grav = -0.75; // generic fall speed
objectHealth = 0; // Everything should set this by default.
invulnerable = false;

tilemap = layer_tilemap_get_id("CollisionTiles"); // Here too.