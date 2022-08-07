
if (global.shopOpened)
{
	keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	if (keyUp || keyDown)
	{
		msg = ""
	}
	weaponsSelect += (keyDown - keyUp);
	if (weaponsSelect >= array_length(weapons)) weaponsSelect = 0;
	if (weaponsSelect < 0) weaponsSelect = array_length(weapons) -1;
	
	keyActivate = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);
	if (keyActivate)
	{
		switch (weaponsSelect)
		{
			//Shotgun
			case 0:
			{
				if (global.buttercount < 50)
				{
					msg = "Not Enough Butter";
					break;
				}
				if (instance_exists(obj_Shotgun))
				{
					msg = "Already Obtained";
					break;
				}
				instance_destroy(obj_Weapon);
				global.buttercount -= 50;
				instance_create_layer(0,0, "Instances", obj_Shotgun);
				msg = "Purchased";
			}break;
			
			//Rifle
			case 1:
			{
				if (global.buttercount < 100)
				{
					msg = "Not Enough Butter";
					break;
				}
				if (instance_exists(obj_Rifle))
				{
					msg = "Already Obtained";
					break;
				}
				instance_destroy(obj_Weapon);
				global.buttercount -= 100;
				instance_create_layer(0,0, "Instances", obj_Rifle);
				msg = "Purchased";
			}break;
			
			//Sniper
			case 2:
			{
				if (global.buttercount < 250)
				{
					msg = "Not Enough Butter";
					break;
				}
				if (instance_exists(obj_Sniper))
				{
					msg = "Already Obtained";
					break;
				}
				instance_destroy(obj_Weapon);
				global.buttercount -= 250;
				instance_create_layer(0,0, "Instances", obj_Sniper);
				msg = "Purchased";
			}break;
		}
	}
}