/// @description Insert description here
// You can write your code in this editor
lifetime -= 1
if lifetime <= 0{
	instance_destroy();
}
if place_meeting(x,y, obj_zombie)
{
	if instance_exists(obj_zombie){
		instance_nearest(x,y, obj_zombie).hitPoints -= damage;
	}
	instance_destroy();
}
x += xspeed;
y += yspeed;

