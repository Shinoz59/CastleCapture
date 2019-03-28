
var turret = argument0;
var fire = turret.projectileType;
var distance = abs(turret.x - obj_Player.x);
var projectile = instance_create_depth(turret.x, turret.bbox_top, turret.depth, fire);

if (turret.facingDirection == facing_direction.Left){
	projectile.x = turret.bbox_left;
	projectile.v_speed = -10;
	projectile.h_speed = -1;
}
else{
	projectile.x = turret.bbox_right;
	projectile.v_speed = -10;
	projectile.h_speed = 1;
}

 // Range type
	projectile.h_speed *= (distance / 32);