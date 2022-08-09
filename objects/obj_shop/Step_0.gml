
if (global.shopOpened)
{
	keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	if (keyUp || keyDown)
	{
		audio_play_sound(snd_menuOptions, 1000, false);
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
				var checkexist = false;
				for (var i = 0, len = array_length(global.obtainedweaponlist); i < len; i++){
					if (global.obtainedweaponlist[i] == obj_Shotgun){
						checkexist = true;
					}
				}
				if (checkexist == true)
				{
					msg = "Already Obtained";
					break;
				}
				else{
					instance_deactivate_object(obj_Weapon);
					global.buttercount -= 50;
					array_push(global.obtainedweaponlist,obj_Shotgun);
					instance_deactivate_object(obj_Weapon);
					msg = "Purchased";
					//play select Audio
					audio_play_sound(snd_purchase, 1000, false);
				}
			}break;
			
			//Rifle
			case 1:
			{
				if (global.buttercount < 100)
				{
					msg = "Not Enough Butter";
					break;
				}
				var checkexist = false;
				for (var i = 0, len = array_length(global.obtainedweaponlist); i < len; i++){
					if (global.obtainedweaponlist[i] == obj_Rifle){
						checkexist = true;
					}
				}
				if (checkexist == true)
				{
					msg = "Already Obtained";
					break;
				}
				else{
					instance_deactivate_object(obj_Weapon);
					global.buttercount -= 100;
					array_push(global.obtainedweaponlist,obj_Rifle);
					instance_deactivate_object(obj_Weapon);					
					msg = "Purchased";
					//play select Audio
					audio_play_sound(snd_purchase, 1000, false);
				}
			}break;
			
			//Sniper
			case 2:
			{
				if (global.buttercount < 250)
				{
					msg = "Not Enough Butter";
					break;
				}
				var checkexist = false;
				for (var i = 0, len = array_length(global.obtainedweaponlist); i < len; i++){
					if (global.obtainedweaponlist[i] == obj_Sniper){
						checkexist = true;
					}
				}
				if (checkexist == true)
				{
					msg = "Already Obtained";
					break;
				}
				else{
					instance_deactivate_object(obj_Weapon);
					global.buttercount -= 250;
					array_push(global.obtainedweaponlist,obj_Sniper);
					instance_deactivate_object(obj_Weapon);
					msg = "Purchased";
					//play select Audio
					audio_play_sound(snd_purchase, 1000, false);
				}
			}break;
		}
	}
}