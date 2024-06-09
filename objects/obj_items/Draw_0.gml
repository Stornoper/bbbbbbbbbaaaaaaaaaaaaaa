/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
draw_set_halign(fa_left);
draw_set_colour(c_black);
draw_text(camera_get_view_x(view_camera[0]) + 80, camera_get_view_y(view_camera[0]) + 16, string(wood_count));
draw_text(camera_get_view_x(view_camera[0]) + 80, camera_get_view_y(view_camera[0]) + 60, string(stone_count));
draw_text(camera_get_view_x(view_camera[0]) + 80, camera_get_view_y(view_camera[0]) + 94, string(iron_count));
draw_text(camera_get_view_x(view_camera[0]) + 944, camera_get_view_y(view_camera[0]) + 16, string(obj_player.hitPoints));
}