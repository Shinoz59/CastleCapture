var player = argument0;

var fire = obj_ThrowWeapon; // Change this to whatever's equipped?

var projectile = instance_create_depth(player.x, player.y, player.depth, fire);

projectile.y -= 5; // scoot it up a bit?  Want it to come out of your arm anyways.
if (player.facingDirection == facing_direction.Left){
	projectile.x = player.bbox_left;
	projectile.v_speed = 0;
	projectile.h_speed = -1;
	projectile.image_xscale = -1; // cheaty way to flip the sprite
}
else{
	projectile.x = player.bbox_right;
	projectile.v_speed = 0;
	projectile.h_speed = 1;
}

 // Range type
	projectile.h_speed *= 10; // have this based on the type of projectile?