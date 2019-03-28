var obj = argument0;
var player = obj_Player;
var x_distance = obj.x - player.x;

  // Set hitstun and invulnerability frames
player.state = Object_State.HitStun;
player.invulnerable = true; // no stacking damage now.

  // Knockback
player.v_speed = -2; // make this proportional?
if (x_distance >= 0){
	player.dx = -2;
}
else
	player.dx = 2;

player.objectHealth -= obj.damage;
// Check to see if player is dead.

player.alarm[0] = 15; // frames it takes to wake up
player.alarm[1] = 60;
