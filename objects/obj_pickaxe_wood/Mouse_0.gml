/// @description Insert description here
// You can write your code in this editor
if (wood_count >= 5){
	building = instance_create_layer(x, y, "Instances_3", obj_pickaxe_wood);
	building.image_xscale = 2;
	building.image_yscale = 2;
	obj_player.currently_crafting = "wood_pickaxe";
}
