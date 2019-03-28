// argument0 - Player object/id
// Will return 0 if no hit, 1 if hit.

// TODO - Remap tile ID collissions.
// - Make gravity work.

var player = argument0;
var isHit = -1;
var t1 = 0;
var t2 = 0;
var t3 = 0;
var t4 = 0;
player.canJump = false;
// tile data - 
// 0 = wall
// 1 = ??
// 2 = screen transition.

if (player.dy > 0){
		// Gets the collision info at the bottom left + right corner.
	t1 = tilemap_get_at_pixel(player.tilemap, player.bbox_left, player.bbox_bottom) & tile_index_mask;
	t2 = tilemap_get_at_pixel(player.tilemap, player.bbox_right, player.bbox_bottom) & tile_index_mask;
	t3 = tilemap_get_at_pixel(player.tilemap, player.bbox_left + 4, player.bbox_bottom) & tile_index_mask;
	t4 = tilemap_get_at_pixel(player.tilemap, player.bbox_right - 4, player.bbox_bottom) & tile_index_mask;

	if (t1 != 0 || t2 != 0){ // All tiles are considered for collision.
		if (t3 != 0 || t4 != 0){			
				// snaps the sprite back to right above the tileset.
			player.y = ((player.bbox_bottom & ~(player.sprite_height-1)) - 1) - player.sprite_bbox_bottom;
			isHit = collision_side.Bottom;
			player.v_speed = 0;
			player.canJump = true;
		}
	}
	
}else if (player.dy < 0){
		// Gets the collision info at the top left + right corner.
	t1 = tilemap_get_at_pixel(player.tilemap, player.bbox_left, player.bbox_top) & tile_index_mask;
	t2 = tilemap_get_at_pixel(player.tilemap, player.bbox_right, player.bbox_top) & tile_index_mask;
	t3 = tilemap_get_at_pixel(player.tilemap, player.bbox_left + 4, player.bbox_top) & tile_index_mask;
	t4 = tilemap_get_at_pixel(player.tilemap, player.bbox_right - 4, player.bbox_top) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0){
		if (t3 != 0 || t4 != 0){
				// snaps the sprite back to right below the tileset.
			player.y = ((player.bbox_top + player.sprite_height) & ~(player.sprite_height-1)) - player.sprite_bbox_top;
			isHit = collision_side.Top;
			player.v_speed = 0;
		}
	}
}
	
if (player.dx > 0){ // moving rightwards
		// Gets the collision info at the bottom left + right corner.
	t1 = tilemap_get_at_pixel(player.tilemap, player.bbox_right, player.bbox_top) & tile_index_mask;
	t2 = tilemap_get_at_pixel(player.tilemap, player.bbox_right, player.bbox_bottom) & tile_index_mask;
	t3 = tilemap_get_at_pixel(player.tilemap, player.bbox_right, player.bbox_top + 4) & tile_index_mask;
	t4 = tilemap_get_at_pixel(player.tilemap, player.bbox_right, player.bbox_bottom - 4) & tile_index_mask;

	if (t1 != 0 || t2 != 0){
			// snaps the sprite back to the left of the tileset.
		if (t3 || t4){
			player.x = ((player.bbox_right & ~(player.sprite_width-1)) - 1) - player.sprite_bbox_right;
			isHit = collision_side.Right;
			player.h_speed = 0;
		}
	}
	
}else if (player.dx < 0){ // moving leftwards
		// Gets the collision info at the top left + right corner.
	t1 = tilemap_get_at_pixel(player.tilemap, player.bbox_left, player.bbox_top) & tile_index_mask;
	t2 = tilemap_get_at_pixel(player.tilemap, player.bbox_left, player.bbox_bottom) & tile_index_mask;
	t3 = tilemap_get_at_pixel(player.tilemap, player.bbox_left, player.bbox_top + 4) & tile_index_mask;
	t4 = tilemap_get_at_pixel(player.tilemap, player.bbox_left, player.bbox_bottom - 4) & tile_index_mask;

	if (t1 != 0 || t2 != 0){
			// snaps the sprite back to right below the tileset.
		if (t3 || t4){
			player.x = ((player.bbox_left + player.sprite_width) & ~(player.sprite_width-1)) - sprite_bbox_left;
			isHit = collision_side.Left;
			player.h_speed = 0;
		}
	}
}
	
return isHit;