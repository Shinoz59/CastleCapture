/// @description State machine type movement/actions.
// You can write your code in this editor

event_inherited(); // holds the alarms for pause

if (!global.pause){ // don't act while paused.
	if (objectHealth > 0){
		if (is_controlling == true){ // for if the game's paused or something.
			 // handle base movement.
			if (state != Object_State.Attacking && state != Object_State.HitStun){
				scr_PlayerMove(id);
				scr_PlayerCheckAttacks(id);
			}
			if (state == Object_State.Attacking){ // TODO - make attack options.
				chargeTime += 1;
				//scr_PlayerCharge(id, chargeTime);
			}
			if (state == Object_State.HitStun){ // get knocked around.
				scr_PlayerMoveHitStun(id);
			}
	
			scr_TileCollission(id); // Should collide with tiles regardless of anything else going on.
		}
	else
		state = Object_State.Dying;
	}
}