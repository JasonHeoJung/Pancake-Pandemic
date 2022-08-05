
if (shop_opened)
{
	keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	weaponsSelect += (keyDown - keyUp);
	if (weaponsSelect >= array_length(weapons)) weaponsSelect = 0;
	if (weaponsSelect < 0) weaponsSelect = array_length(weapons) -1;
	
	keyActivate = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);
	if (keyActivate)
	{
		switch (weaponsSelect)
		{
			case 0: //Continue
			{
				instance_destroy(obj_Weapon)
				instance_create_layer(0,0, "Instances", obj_Pistol)
			}break;
			case 1:
			{
				instance_destroy(obj_Weapon)
				instance_create_layer(0,0, "Instances", obj_Shotgun)
			}break;
		}
	}
}