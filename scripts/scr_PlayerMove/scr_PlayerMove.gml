// argument 0 = player.
var player = argument0;

player.dx = 0;
player.dy = 0;

var speedUp = player.walkSpeed / 8;
var slowDown = player.walkSpeed / 4;

 // Movement code.  Probably too weird at the moment, but it works.
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) { // Expand to controller support.
	//if (player.sprite_index != sp_Protag_WalkRight){
	//	player.sprite_index = sp_Protag_WalkRight;
	//	player.image_index = 0;
	//}
	player.facingDirection = facing_direction.Right;
	if (player.h_speed < 0)
		player.h_speed += slowDown;
	else if (player.h_speed < player.walkSpeed)
		player.h_speed += speedUp;
	else
		player.h_speed = player.walkSpeed;
}
else if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	//if (player.sprite_index != sp_Protag_WalkLeft){
	//	player.sprite_index = sp_Protag_WalkLeft;
	//	player.image_index = 0;
	//}
	if (player.h_speed > 0)
		player.h_speed -= slowDown;
	else if (player.h_speed > slowDown)
		player.h_speed -= speedUp;
	else
		player.h_speed = -1 * player.walkSpeed;
	player.facingDirection = facing_direction.Left;
}
else // right and left are not pressed, slow down.
{
	if (player.h_speed > - 1 * slowDown && player.h_speed < slowDown)
		player.h_speed = 0;
	else if (player.h_speed > 0)
		player.h_speed -= slowDown;
	else if (player.h_speed < 0)
		player.h_speed += slowDown;
}

player.dx = player.h_speed;


if ( keyboard_check(vk_space)){
	scr_PlayerJump(id);
}

player.dy = player.v_speed;
player.v_speed -= player.grav;

//else if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	//if (player.sprite_index != sp_Protag_WalkUp){
	//	player.sprite_index = sp_Protag_WalkUp;
	//	player.image_index = 0;
	//}
//	player.facingDirection = facing_direction.North;
//	player.dy -= player.walkSpeed;
//}
//else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	//if (player.sprite_index != sp_Protag_WalkDown){
	//	player.sprite_index = sp_Protag_WalkDown;
	//	player.image_index = 0;
	//}
//	player.dy += player.walkSpeed;
//	player.facingDirection = facing_direction.South;
//}
//else if (player.sprite_index != sp_Protag_Idle){
//	player.sprite_index = sp_Protag_Idle;	
//}

player.x += dx;
player.y += dy;