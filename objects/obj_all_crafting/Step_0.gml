if (keyboard_check(vk_escape)){
	obj_player.crafting = false;
	obj_craft_again.sluiten = true;
	instance_destroy();
}
//show craftables

if (obj_player.spear_lvl = 0){
	instance_create_layer(x, y, "Instances_3", obj_spear_wood)
}
else if (obj_player.spear_lvl = 1){
	instance_create_layer(x, y, "Instances_3", obj_spear_stone)
}
else if (obj_player.spear_lvl = 2){
	instance_create_layer(x, y, "Instances_3", obj_spear_iron)
}

if (obj_player.axe_lvl = 0){
	instance_create_layer(x, y, "Instances_3", obj_axe_wood)
}
else if (obj_player.axe_lvl = 1){
	instance_create_layer(x, y, "Instances_3", obj_axe_stone)
}
else if (obj_player.axe_lvl = 2){
	instance_create_layer(x, y, "Instances_3", obj_axe_iron)
}

if (obj_player.pickaxe_lvl = 0){
	instance_create_layer(x, y, "Instances_3", obj_pickaxe_wood)
}
else if (obj_player.pickaxe_lvl = 1){
	instance_create_layer(x, y, "Instances_3", obj_pickaxe_stone)
}
else if (obj_player.pickaxe_lvl = 2){
	instance_create_layer(x, y, "Instances_3", obj_pickaxe_iron)
}

if (obj_player.has_crossbow == false){
	instance_create_layer(x-368, y-145, "Instances_3", obj_crossbow_tower)
}
if (obj_player.has_inferno == false){
	instance_create_layer(x-368, y, "Instances_3", obj_inferno)
}
if (obj_player.has_canon == false){
	instance_create_layer(x-368, y+145, "Instances_3", obj_canon)
}

// crafting
if (obj_player.currently_crafting = "wood_spear") && wood_count >= 3 && keyboard_check_released(vk_enter){
	obj_player.spear_lvl = 1;
	wood_count -= 3;
	obj_player.currently_crafting = "niks"
}
if (obj_player.currently_crafting = "stone_spear") && wood_count >= 2 && stone_count >= 1 && keyboard_check_released(vk_enter){
	obj_player.spear_lvl = 2;
	wood_count -= 2;
	stone_count -= 1;
	obj_player.currently_crafting = "niks"
}
if (obj_player.currently_crafting = "iron_spear") && wood_count >= 2 && iron_count >= 1 && keyboard_check_released(vk_enter){
	obj_player.spear_lvl = 3;
	wood_count -= 2;
	iron_count -= 1;
	obj_player.currently_crafting = "niks"
}

if (obj_player.currently_crafting = "wood_axe") && wood_count >= 5 && keyboard_check_released(vk_enter){
	obj_player.axe_lvl = 1;
	wood_count -= 5;
	obj_player.currently_crafting = "niks"
}
if (obj_player.currently_crafting = "stone_axe") && wood_count >= 2 && stone_count >= 3 && keyboard_check_released(vk_enter){
	obj_player.axe_lvl = 2;
	wood_count -= 2;
	stone_count -= 3;
	obj_player.currently_crafting = "niks"
}
if (obj_player.currently_crafting = "iron_axe") && wood_count >= 2 && iron_count >= 3 && keyboard_check_released(vk_enter){
	obj_player.axe_lvl = 3;
	wood_count -= 2;
	iron_count -= 3;
	obj_player.currently_crafting = "niks"
}

if (obj_player.currently_crafting = "wood_pickaxe") && wood_count >= 5 && keyboard_check_released(vk_enter){
	obj_player.spear_lvl = 1;
	wood_count -= 5;
	obj_player.currently_crafting = "niks"
}
if (obj_player.currently_crafting = "stone_pickaxe") && wood_count >= 2 && stone_count >= 3 && keyboard_check_released(vk_enter){
	obj_player.pickaxe_lvl = 2;
	wood_count -= 2;
	stone_count -= 3;
	obj_player.currently_crafting = "niks"
}
if (obj_player.currently_crafting = "iron_pickaxe") && wood_count >= 2 && iron_count >= 3 && keyboard_check_released(vk_enter){
	obj_player.pickaxe_lvl = 3;
	wood_count -= 2;
	iron_count -= 3;
	obj_player.currently_crafting = "niks"
}

if (obj_player.currently_crafting = "crossbow") && obj_player.has_crossbow = false && wood_count >= 5 && stone_count >= 1 && iron_count >= 2 && keyboard_check_released(vk_enter){
	obj_player.has_crossbow = true;
	wood_count -= 5;
	stone_count -= 1;
	iron_count -= 2;
	obj_player.currently_crafting = "niks"
	instance_destroy(obj_crossbow_tower);
}
if (obj_player.currently_crafting = "inferno") && obj_player.has_inferno = false && wood_count >= 3 && iron_count >= 5 && keyboard_check_released(vk_enter){
	obj_player.has_inferno = true;
	wood_count -= 3;
	iron_count -= 5;
	obj_player.currently_crafting = "niks"
	instance_destroy(obj_inferno);
}
if (obj_player.currently_crafting = "canon") && obj_player.has_canon = false && wood_count >= 4 && stone_count >= 4 && keyboard_check_released(vk_enter){
	obj_player.has_canon = true;
	wood_count -= 4;
	stone_count -= 4;
	obj_player.currently_crafting = "niks"
	instance_destroy(obj_canon);
}