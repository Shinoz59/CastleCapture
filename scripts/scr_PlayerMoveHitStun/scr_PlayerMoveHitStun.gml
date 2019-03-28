// argument 0 = player.
var player = argument0;

player.dy = 0;

player.dy = player.v_speed;
player.v_speed -= player.grav;
player.h_speed = 0;

player.x += dx;
player.y += dy;