/// @description save alarms on pause/unpause.
// You can write your code in this editor

if (global.pausing){ // grab the alarm timers before pausing to ensure they don't
	alarmsave0 = alarm[0];
	alarmsave1 = alarm[1];
	alarmsave2 = alarm[2];
	alarmsave3 = alarm[3];
	alarm[0] = -1;
	alarm[1] = -1;
	alarm[2] = -1;
	alarm[3] = -1;
}
else if (global.unpause){
	alarm[0] = alarmsave0; // put the alarms back in order.
	alarm[1] = alarmsave1;
	alarm[2] = alarmsave2;
	alarm[3] = alarmsave3;
}