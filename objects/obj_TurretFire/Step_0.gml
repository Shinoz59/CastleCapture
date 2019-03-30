/// @description Insert description here
// You can write your code in this editor

// check if collided with player.

event_inherited(); // holds the alarms for pause

if(!global.pause){
	dx = h_speed;
	dy = v_speed;
	if (v_speed < gravMax)
		v_speed -= grav;

	x += h_speed;
	y += v_speed;

	if (state != Object_State.Dying){
		
			// hit the player.
		if (scr_CollideWithPlayer(id) != noone){
			scr_DamagePlayer(id);
			alarm[2] = 45;
			state = Object_State.Dying;
			h_speed /= 2;
		}

		// check if collided with floor?
		var collided = scr_TileCollission(id);

		if (collided > -1){
			alarm[2] = 45;
			state = Object_State.Dying;
			if (collided == collision_side.Left || collided == collision_side.Right){
				h_speed = 0;
			}
			else
				h_speed /= 2;
		}
	}
	else{
		sprite_index = spr_firesplode;
	}
}