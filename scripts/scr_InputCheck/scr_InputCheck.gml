
enum InputButton{
	Up = 0,
	Down = 1,
	Left = 2,
	Right = 3,
	Jump = 4,
	Throw = 5,
	Melee = 6,
	Pause = 7,
	QuickSwitch = 8,
	SwitchMenu = 9,
	Power = 10 // Add more as things come up.
};

var inputToCheck = argument0;

switch(inputToCheck){ // I'd want to change these input checks with like, the global setting for them?
	case InputButton.Up: // also change keyboard check and gamepad check probably?
		if (keyboard_check(ord("W")) || keyboard_check(vk_up))
			return true;
		break;
	case InputButton.Down:
		if (keyboard_check(ord("S")) || keyboard_check(vk_down))
			return true;
		break;
	case InputButton.Right:
		if (keyboard_check(ord("D")) || keyboard_check(vk_right))
			return true;
		break;
	case InputButton.Left:
		if (keyboard_check(ord("A")) || keyboard_check(vk_left))
			return true;
		break;
	case InputButton.Jump:
		if (keyboard_check(vk_space))
			return true;
		break;
	case InputButton.Throw:
		if (keyboard_check_pressed(ord("E"))) // don't want it triggering repeatedly.
			return true;
		break;
	case InputButton.Pause:
		if (keyboard_check_pressed(vk_escape)) // don't want it triggering repeatedly.
			return true;
		break;
}

return false;
