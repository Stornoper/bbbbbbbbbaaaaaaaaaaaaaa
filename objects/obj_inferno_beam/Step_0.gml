/// @description Insert description here
// You can write your code in this editor
if (parentID.inferno_dist >= 128){
	instance_destroy();
}
if instance_exists(parentID.inferno_target){
	var dir = point_direction(x, y, parentID.inferno_target.x, parentID.inferno_target.y);
	image_angle = dir;
	image_xscale = parentID.inferno_dist/80;
}

//damage
if timer > 0{
	timer -= 1
}
else if timer = 0
{
	damage = damage * multiplier
	timer = 60
	parentID.inferno_target.hitPoints -= damage
}



image_index = ticks/2; 