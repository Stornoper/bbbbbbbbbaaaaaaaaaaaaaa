/// @description Insert description here
// You can write your code in this editor
camX = camera_get_view_x(view_camera[0]);
camY = camera_get_view_y(view_camera[0]);

x = camX + 256
y = camY + 480

if obj_player.buildMode
{
	sprite_index = spr_slots_buildmode
}
else if !obj_player.buildMode
{
	sprite_index = spr_slots_normal
}
