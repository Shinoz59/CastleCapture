var player = argument0;

player.state = Object_State.Capturing;
player.captureCircle = instance_create_depth(player.x, player.y, player.depth, obj_Capture);

if (player.facingDirection == facing_direction.Left){
	player.captureCircle.x = player.bbox_left - 32; // replace the 32 with tile size or something.
	player.captureCircle.image_xscale = -1; // cheaty way to flip the sprite
}
else{
	player.captureCircle.x = player.bbox_right + 32;
}