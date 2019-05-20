var player = argument0;

if (scr_InputCheck(InputButton.Capture)){
	if (player.captureCircle != noone){
		player.captureCircle.alarm[1] = 4; // stop it from self-destructing.
	}
	else
		player.state = Object_State.Idle;
}
else
	player.state = Object_State.Idle;
	attackCooldown = 15;