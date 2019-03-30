/// @description Handles Room step
// You can write your code in this editor


// pausing?

if (global.pausing){ // Only want to set this for a frame.
	global.pausing = false;
}
if (global.unpause){ // only want this set for one frame too.
	global.unpause = false;	
}

if (global.pause){
	if (keyboard_check_pressed(ord("P")) && pauseCooldown <= 0){
		global.pause = false;
		pauseCooldown = pauseCooldownMax;
		global.unpause = true;
	}
}
else{
	if (keyboard_check_pressed(ord("P")) && pauseCooldown <= 0){
		global.pause = true;
		global.pausing = true;
		pauseCooldown = pauseCooldownMax;
	}
}

if (pauseCooldown > 0){
	--pauseCooldown;
}
