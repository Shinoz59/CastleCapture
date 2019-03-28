var obj = argument0;
var enemy = argument1;
var x_distance = obj.x - enemy.x;

if (enemy.invulnerable != true){
	  // Set hitstun and invulnerability frames
	enemy.state = Object_State.HitStun;
	enemy.invulnerable = true; // no stacking damage now.


	//knockback = 3;
	//damage = 15;

	  // Knockback
	enemy.v_speed = -obj.knockback / 3; // make this proportional?
	if (x_distance >= 0){
		enemy.dx = -obj.knockback / 3;
	}
	else
		enemy.dx = obj.knockback / 3;

	enemy.objectHealth -= obj.damage;
	// Check to see if enemy is dead.
	if (enemy.objectHealth <= 0){
		enemy.state = Object_State.Dying;
		enemy.alarm[2] = 45; // destroy object.  Should probably put this somewhere else.
	}
	else{
		enemy.alarm[0] = obj.knockback * 5; // frames it takes to wake up
		enemy.alarm[1] = obj.knockback * 5; // frames it takes to stop being invincible.
	}
}