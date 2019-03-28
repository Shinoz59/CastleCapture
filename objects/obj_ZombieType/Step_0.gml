/// @description State machine type movement/actions.
// You can write your code in this editor

//if (is_controlling == true){ // for if the game's paused or something.
	 // handle base movement.
if (state != Object_State.Dying){
		
	if (state != Object_State.HitStun){
		scr_ZombieMove(id);
		if (scr_CollideWithPlayer(id) != noone){ // his body is a hitbox.
			scr_DamagePlayer(id);
		}
	}

	if (state == Object_State.HitStun){ // get knocked around.
		x += dx; // maybe move this?
		y += dy; 
	}
	
	var collided = scr_TileCollission(id); // Should collide with tiles regardless of anything else going on.
	if (collided == collision_side.Right) // Turn around if you hit a wall.
		facingDirection = facing_direction.Left;
	else if (collided == collision_side.Left)
		facingDirection = facing_direction.Right
}
else{
	sprite_index = spr_PlaceholderDestroy;
}
//}
