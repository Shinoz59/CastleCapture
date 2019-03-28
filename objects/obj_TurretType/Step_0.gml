/// @description State machine type movement/actions.
// You can write your code in this editor

	if (state != Object_State.HitStun){
		if (cooldown <= 0){
			scr_TurretAttack(id);
			cooldown = cooldownMax;
		}
		if (turnCooldown <= 0){
			if (x - obj_Player.x < 0)
				facingDirection = facing_direction.Right;
			else
				facingDirection = facing_direction.Left;
		
			turnCooldown = turnCooldownMax;
		}
		--cooldown;
		--turnCooldown;
	}
	

	if (state == Object_State.HitStun){ // don't cooldown.
	}
