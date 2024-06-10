/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_zombie) 
{
	crossbow_target = instance_nearest(x, y, obj_zombie);
	crossbow_dist = distance_to_object(crossbow_target) + 32;
	crossbow_dir = point_direction(x, y, crossbow_target.x, crossbow_target.y);
	noZombie = false;
}
if instance_exists(crossbow_target)
{
	noZombie = false;
}

//damage
if crossbow_dist < 256{
	timer -= 1;
	image_angle = crossbow_dir - 45;
}
if timer < 30{
	image_index = 0;
}
if timer == 0 && crossbow_dist < 256 && !noZombie{
	timer = 35;
	image_index = 1;
	var new_arrow = instance_create_layer(x, y, "Instances_2", obj_crossbow_arrow);
	new_arrow.xspeed = lengthdir_x(4, crossbow_dir);
    new_arrow.yspeed = lengthdir_y(4, crossbow_dir);
    new_arrow.image_angle = crossbow_dir - 45;
	image_angle = crossbow_dir - 45;
}
