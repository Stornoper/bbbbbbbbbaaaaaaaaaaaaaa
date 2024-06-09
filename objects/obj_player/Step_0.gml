if hitPoints <= 0
{
	instance_destroy();
}
//variables
right_key = keyboard_check(ord("D")) || keyboard_check(vk_right);
left_key = keyboard_check(ord("A")) || keyboard_check(vk_left);
up_key = keyboard_check(ord("W")) || keyboard_check(vk_up);
down_key = keyboard_check(ord("S")) || keyboard_check(vk_down);
build_key = keyboard_check_released(ord("B"));
attack_button = mouse_check_button_released(mb_left)
//movement
xspd = (right_key-left_key) * movesp;
yspd = (down_key-up_key) * movesp;


if !oneselectednormal && !twoselectednormal && !threeselectednormal
{
	holding_weapon = false;
}
else
{
	holding_weapon = true;
}



// place meeting
if place_meeting(x + xspd, y, obj_collission)
{
    while (!place_meeting(x + sign(xspd), y, obj_collission))
    {
        x += sign(xspd);
    }
    xspd = 0;
}
if place_meeting(x, y + yspd, obj_collission)
{
    while (!place_meeting(x, y + sign(yspd), obj_collission))
    {
        y += sign(yspd);
    }
    yspd = 0;    
}

if yspd != 0 || xspd != 0
{
	moving = true
}
else 
{
	moving = false
}

//resource collecting
if distance_to_object(obj_rock) < 10 && threeselectednormal
{
	if attack_button
	{
		stone_count += 5 * currentpickaxemultiplier
	}
}
if distance_to_object(obj_tree) < 10 && oneselectednormal
{
	if attack_button
	{
		wood_count += 5 * currentaxemultiplier
	}
}
if distance_to_object(instance_nearest(x,y, obj_zombie)) < 20 && twoselectednormal
{
	if attack_button
	{
		instance_nearest(x,y, obj_zombie).hitPoints -= 1 * currentspearmultiplier
	}
}
if distance_to_object(obj_iron_ore) < 10 && threeselectednormal
{
	if attack_button
	{
		iron_count += 1 * currentpickaxemultiplier
	}
}

if (attack_button == true and holding_weapon){
	var attack = instance_create_layer(x, y, "Instances_2", obj_slash);
	attack.image_angle = point_direction(x, y, mouse_x, mouse_y)-90;
}



//bouwen 
if build_key && buildMode = false
{
	buildMode = true;
}
else if build_key
{
	buildMode = false;
}
if buildMode
{
	if keyboard_check_pressed(ord("1")) && oneselected = false
	{
		clearSelection();
		instance_create_layer(mouse_x, mouse_y, "Instances_2", obj_block_vault_transparant); 
		oneselected = true
	}
	else if keyboard_check_pressed(ord("2")) && twoselected = false 
	{
		clearSelection();
		instance_create_layer(mouse_x, mouse_y, "Instances_2", obj_block_crafter_transparant); 
		twoselected= true
	}
	else if keyboard_check_pressed(ord("3")) && threeselected = false 
	{
		clearSelection();
		instance_create_layer(mouse_x, mouse_y, "Instances_2", obj_block_crossbow_transparant); 
		threeselected= true
	}
	else if keyboard_check_pressed(ord("4")) && fourselected = false 
	{
		clearSelection();
		instance_create_layer(mouse_x, mouse_y, "Instances_2", obj_block_inferno_transparant); 
		fourselected= true
	}
	else if build_key
	{
		clearSelection();
	}
}
if !buildMode
{
	if keyboard_check_pressed(ord("1")) && oneselectednormal = false
	{
		clearSelection();
		currentWeapon = currentAxe
		currentSprite = currentWeapon.sprite
		currentSwing = currentWeapon.swing
		oneselectednormal = true
	}
	else if keyboard_check_pressed(ord("2")) && twoselectednormal = false 
	{
		clearSelection();
		currentWeapon = currentSpear
		currentSprite = currentWeapon.sprite
		currentSwing = currentWeapon.swing
		twoselectednormal= true
	}
	else if keyboard_check_pressed(ord("3")) && threeselectednormal = false 
	{
		clearSelection();
		currentWeapon = currentPickaxe
		currentSprite = currentWeapon.sprite
		currentSwing = currentWeapon.swing
		threeselectednormal= true
	}
}
	

//animation,

if attack_button
{
	swingAnimation = true;
}

if !moving && !swingAnimation
{
	image_speed = 0;
}
else if moving = true && !swingAnimation
{
	image_speed = 1
}
else if swingAnimation
{
	sprite_index = currentSwing;
	image_speed = 1;
	swingCountdown = 60;
	swingAnimation = false
}
if swingCountdown > 0
{
	swingCountdown -= 1;
}
else if swingCountdown = 0
{
	sprite_index = currentSprite;
}
image_angle = point_direction(x, y, mouse_x, mouse_y)-90; 

// camera
var cam_x = lerp(camera_get_view_x(view_camera[0]), (x) - view_wview[0]/2, 0.1);
var cam_y = lerp(camera_get_view_y(view_camera[0]), (y) - view_hview[0]/2, 0.1);

camera_set_view_pos(view_camera[0], cam_x, cam_y);

// beweging
x += xspd
y += yspd