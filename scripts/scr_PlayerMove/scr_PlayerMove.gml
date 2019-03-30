// argument 0 = player.
var player = argument0;

player.dx = 0;
player.dy = 0;

var speedUp = player.walkSpeed / 8;
var slowDown = player.walkSpeed / 4;

 // Movement code.  Probably too weird at the moment, but it works.
if (scr_InputCheck(InputButton.Right)) { // Expand to controller support.
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
else if (scr_InputCheck(InputButton.Left)) {
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


if (scr_InputCheck(InputButton.Jump)){
	scr_PlayerJump(id);
}

player.dy = player.v_speed;
player.v_speed -= player.grav;

player.x += dx;
player.y += dy;