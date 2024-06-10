function buildFunction()
{
	x = round(mouse_x/32)*32;
	y = round(mouse_y/32)*32;

	if mouse_check_button_pressed(mb_left) && !place_meeting(x, y, obj_collission) && !place_meeting(x, y, obj_player) && objCount < objLimit
	{
		instance_create_layer(x,y, "Buildables", block);
		instance_create_layer(x,y, "Buildables", obj_collission);
	}
	if keyboard_check_pressed(ord("B")) && obj_player.buildMode
	{
		instance_destroy();
		obj_player.buildMode = false;
	}
}

function clearSelection()
{
	if buildMode
	{
		if oneselected
		{
			instance_destroy(obj_block_vault_transparant);
			oneselected = false;
		}
		if twoselected
		{
			instance_destroy(obj_block_crafter_transparant);
			twoselected = false;
		}
		if threeselected
		{
			instance_destroy(obj_block_crossbow_transparant);
			threeselected = false;
		}
		if fourselected
		{
			instance_destroy(obj_block_inferno_transparant);
			fourselected = false;
		}
		if fiveselected
		{
			instance_destroy(obj_block_cannon_transparant);
			fiveselected = false;
		}
	}
	if !buildMode
	{
		if oneselectednormal
		{
			oneselectednormal = false;
		}
		if twoselectednormal
		{
			twoselectednormal = false;
		}
		if threeselectednormal
		{
			threeselectednormal = false;
		}
		if fourselectednormal
		{

			fourselectednormal = false;
		}
	}
}

