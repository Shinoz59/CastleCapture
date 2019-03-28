var obj = argument0; // the object
var collissions = noone; // default return value.
var player = instance_nearest(obj.x, obj.y, obj_Player);

 // see if it collided with the player?  Expand later if necessary.
if (player.invulnerable == false){
	collissions = instance_place(obj.x, obj.y, obj_Player);
}

return collissions;