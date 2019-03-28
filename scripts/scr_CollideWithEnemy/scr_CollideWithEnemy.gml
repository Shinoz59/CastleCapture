var obj = argument0; // the object
var collission = noone; // default return value.

 // see if it collided with a valid enemy object?  Expand later if necessary.
collission = instance_place(obj.x, obj.y, obj_Enemy);

return collission;