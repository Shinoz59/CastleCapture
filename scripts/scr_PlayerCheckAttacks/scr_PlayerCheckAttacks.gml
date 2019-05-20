var player = argument0;

// check to see if any attack buttons are pressed, and activate them if they are valid.

if (attackCooldown == 0){
  // Thrown weapon, valid based on cooldown of thrown weapon.
	if (scr_InputCheck(InputButton.Throw)){
		scr_PlayerThrowAttack(player);
		attackCooldown = 30;
	}

	if (scr_InputCheck(InputButton.Capture)){
		scr_PlayerStartCapture(id);
	}
}

if (attackCooldown > 0)
	--attackCooldown;