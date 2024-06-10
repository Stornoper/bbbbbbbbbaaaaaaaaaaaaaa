/// @description Insert description here
// You can write your code in this editor
if timer < 1800 && time=1 && pause_timer = 0{
	timer++;
}
if timer = 1800 && time = 1 
{
	time = 0;
	pause_timer = 1800;
}
if timer > 0 && time = 0 && pause_timer = 0
{
	timer--;
}
if timer = 0 && time = 0
{
	time = 1
	pause_timer = 1800;
	wavedifficulty += 1;
}
image_alpha = timer/1800
if pause_timer > 0
{
	pause_timer--;
}


if time = 0 && zombiespawntimer = 0
{
var spawn_area_width = 1920; 
var spawn_area_height = 1080; 
var spawn_distance = 600; 

for (var i = 0; i < wavedifficultymp; i += 1)
{
var target_x = obj_block_vault.x; 
var target_y = obj_block_vault.y; 
var spawn_x = irandom_range(target_x - spawn_area_width / 2, target_x + spawn_area_width / 2);
var spawn_y = irandom_range(target_y - spawn_area_height / 2, target_y + spawn_area_height / 2);

var distance_to_target = point_distance(spawn_x, spawn_y, target_x, target_y);
show_debug_message(distance_to_target);
if (distance_to_target >= spawn_distance) {
   
    instance_create_layer(spawn_x, spawn_y, "Instances_2", obj_zombie);
}
}
	zombiespawntimer = 150
}
if zombiespawntimer > 0 && time = 0
{
	zombiespawntimer--;
}