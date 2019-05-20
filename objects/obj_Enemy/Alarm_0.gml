/// @description Wake up from Hitstun
// You can write your code in this editor

if (stunCounter > stunThreshold){ // if its stunned, stay in hitstun longer.
	stunCounter = 0;
	alarm[0] = 120; // maybe add some stun animation/image or something?
}
else
	state = Object_State.Idle;