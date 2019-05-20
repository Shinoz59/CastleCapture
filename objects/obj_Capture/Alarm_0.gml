/// @description Capture stunned enemies that collide with this circle.
// You can write your code in this editor

var hitEnemy = scr_CollideWithEnemyList(id);
for (i = 0; i < ds_list_size(hitEnemy); ++i){
	
	var enemyInst = ds_list_find_value(hitEnemy, i);
	if (enemyInst.state == Object_State.HitStun){
		// capture enemy.
		
		enemyInst.state = Object_State.Dying; // might need more fancy stuff here.
		break;
	}
}
ds_list_destroy(hitEnemy); // clean up after yourself.
obj_Player.captureCircle = noone;
instance_destroy(id); // end self after doing the stuff.