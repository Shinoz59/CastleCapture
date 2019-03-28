
var player = argument0;

if (player.v_speed >= 0) // Falling is positive
{
	if (player.canJump){ // updated in the TileCollission script.  Make sure this is called after it or you'll be using frame-old date.
		player.v_speed = -player.jumpSpeed;
	}
}