/// @description Insert description here
// You can write your code in this editor
if !instance_exists(id.inferno_target)
{
id.inferno_target = instance_nearest(x, y, obj_zombie);
}
id.inferno_dist = distance_to_object(inferno_target) + 32;
if (inferno_dist < 128 and ballin){
	newBeam = instance_create_layer(x, y, "Instances_2", obj_inferno_beam);
	newBeam.parentID = id;
	noEnemy = false;
	ballin = false;
}
else
{
	noEnemy = true;
}

if place_meeting(x, y, obj_mouse)
{
	if keyboard_check_released(ord("L"))
	{
		instance_destroy(id)
	}
}