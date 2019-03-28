/// @description Insert description here
// You can write your code in this editor

// check if collided with player.
dx = h_speed;
dy = v_speed;
if (v_speed < gravMax)
	v_speed -= grav;

x += h_speed;
y += v_speed;
	// hit the player.
if (scr_CollideWithPlayer(id) != noone){
	scr_DamagePlayer(id);
}

// check if collided with floor?
var collided = scr_TileCollission(id);

if (collided > 0)
	instance_destroy(id); // destroy self if collided with something.