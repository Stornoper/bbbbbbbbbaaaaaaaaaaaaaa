/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_zombie) 
{
	cannon_target = instance_nearest(x, y, obj_zombie);
	cannon_dist = distance_to_object(cannon_target) + 32;
	cannon_dir = point_direction(x, y, cannon_target.x, cannon_target.y);
	noZombie = false;
}
if instance_exists(cannon_target)
{
	noZombie = false;
}

//damage
if cannon_dist < 256{
	timer -= 1;
	image_angle = cannon_dir+90;
}
if timer < 60{
	image_index = 0;
}
if timer == 0 && cannon_dist < 256 && !noZombie{
	timer = 60;
	image_index = 1;
	var new_arrow = instance_create_layer(x, y, "Instances_2", obj_cannonball);
	new_arrow.xspeed = lengthdir_x(4, cannon_dir);
    new_arrow.yspeed = lengthdir_y(4, cannon_dir);
    new_arrow.image_angle = cannon_dir;
	image_angle = cannon_dir+90;
}
show_debug_message(image_angle)