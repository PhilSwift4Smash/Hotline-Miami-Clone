//follows path

if (enemy_health <= 0){
instance_destroy();	
}

if (collision_circle(x, y, 1000, obj_player, false, true)){
image_angle = point_direction(x, y, obj_player.x, obj_player.y) + 90;
if (mp_grid_path(global.grid, path, x, y , obj_player.x, obj_player.y, true)){
path_start(path, 3, path_action_stop, true);	
}
if(!place_free(obj_player.x, obj_player.y)){
path_end();	
}
}
if (collision_circle(x, y, 350, obj_enemy_human, false, true)){
image_angle = point_direction(x, y, obj_player.x, obj_player.y) + 90;
if (mp_grid_path(global.grid, path, x, y , obj_player.x, obj_player.y, true)){
path_start(path, 3, path_action_stop, true);	
}
}
image_angle = direction + 90;


