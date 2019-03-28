/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor

// check if collided with player.
dx = h_speed;
dy = v_speed;
if (v_speed < gravMax)
	v_speed -= grav;

x += h_speed;
y += v_speed;
	// hit the player.
hitEnemy = scr_CollideWithEnemy(id);
if (hitEnemy != noone){
	scr_DamageEnemy(id, hitEnemy);
	instance_destroy(id); // don't exist after hitting.
	return;
}

// check if collided with floor/walls?
var collided = scr_TileCollission(id);
if (collided > -1)
	instance_destroy(id); // destroy self if collided with something.