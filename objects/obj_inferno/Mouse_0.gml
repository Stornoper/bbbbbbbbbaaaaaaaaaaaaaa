/// @description Insert description here
// You can write your code in this editor
if (wood_count >= 3 && iron_count >= 5){
	building = instance_create_layer(755, 288, "Instances_3", obj_inferno);
	building.image_xscale = 2;
	building.image_yscale = 2;
	obj_player.currently_crafting = "inferno";
}
