var obj = argument0; // the object
var collission = ds_list_create(); // default return value.

 // see if it collided with a valid enemy object?  Expand later if necessary.
instance_place_list(obj.x, obj.y, obj_Enemy, collission, false);

return collission;