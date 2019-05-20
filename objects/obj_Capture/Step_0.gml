/// @description Insert description here
// You can write your code in this editor

if (!global.pause){ // don't act while paused.
	
	if (image_xscale > 0)
		image_xscale += 0.03;
	else
		image_xscale -= 0.03;
	image_yscale += 0.03;

}
else{
	alarm[0] += 1;
	alarm[1] += 1;
}