/// @description Insert description here
// You can write your code in this editor
if (wood_count >= 2 && iron_count >= 3){
	building = instance_create_layer(x, y, "Instances_3", obj_pickaxe_iron);
	building.image_xscale = 2;
	building.image_yscale = 2;
	obj_player.currently_crafting = "iron_pickaxe";
}
