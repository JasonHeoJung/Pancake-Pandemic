
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
			//pistol
			case 0:
			{
				if (global.buttercount < cost[0]){
					msg = "Not Enough Butter";
					break;	
				}
				else{
					instance_activate_object(obj_Pistol);
					obj_Pistol.reps += 3;
					obj_Pistol.bulletsize += 0.2
					obj_Pistol.bulletfric -= 0.05;
					global.buttercount -= cost[0];
					cost[0] += 50;
					msg = "Upgraded";
					instance_deactivate_object(obj_Weapon);
					break;
				}
			}break;
			//Shotgun
			case 1:
			{
				var checkexist = false;
				for (var i = 0, len = array_length(global.obtainedweaponlist); i < len; i++){
					if (global.obtainedweaponlist[i] == obj_Shotgun){
						checkexist = true;
					}
				}
				if (checkexist == false){
					if (global.buttercount < 50)
					{
					msg = "Not Enough Butter";
					break;
					}	
					else{
					instance_deactivate_object(obj_Weapon);
					global.buttercount -= cost[1];
					cost[1] = 100;
					array_push(global.obtainedweaponlist,obj_Shotgun);
					instance_deactivate_object(obj_Weapon);
					msg = "Purchased";
					//play select Audio
					audio_play_sound(snd_purchase, 1000, false);
					break;
					}
				}

				if (checkexist == true)
				{
					if (global.buttercount < cost[1]){
						msg = "Not Enough Butter";
						break;	
					}
					else{
						instance_activate_object(obj_Shotgun);
						obj_Shotgun.bulletdistance += 150;
						obj_Shotgun.reps += 1;
						obj_Shotgun.bulletsize *= 1.5; 
						if (obj_Shotgun.bulletcost >= 1){
							obj_Shotgun.bulletcost -= 1;
						}
						global.buttercount -= cost[1];
						cost[1] += 100;
						msg = "Upgraded";
						break;
						instance_deactivate_object(obj_Weapon);
					}
				}			
			}break;
			
			//Rifle
			case 2:
			{
				var checkexist = false;
				for (var i = 0, len = array_length(global.obtainedweaponlist); i < len; i++){
					if (global.obtainedweaponlist[i] == obj_Rifle){
						checkexist = true;
					}
				}
				if (checkexist == false){
					if (global.buttercount < cost[2])
					{
					msg = "Not Enough Butter";
					break;
					}	
					else{
					instance_deactivate_object(obj_Weapon);
					global.buttercount -= cost[2];
					cost[2] = 100;
					array_push(global.obtainedweaponlist,obj_Rifle);
					instance_deactivate_object(obj_Weapon);
					msg = "Purchased";
					//play select Audio
					audio_play_sound(snd_purchase, 1000, false);
					break;
					}
				}
				if (checkexist == true)
				{
					if (global.buttercount < cost[2]){
						msg = "Not Enough Butter";
						break;	
					}
					else{
						instance_activate_object(obj_Rifle);
						if (obj_Rifle.bulletcost >= 1){
							obj_Rifle.bulletcost -= 1;
						}
						obj_Rifle.bulletsize += 0.25;
						obj_Rifle.bulletdistance += 100;
						global.buttercount -= cost[2];
						cost[2] += 100;
						msg = "Upgraded";
						instance_deactivate_object(obj_Weapon);
						break;
					}
				}	
			}break;
			
			//Sniper
			case 3:
			{
				var checkexist = false;
				for (var i = 0, len = array_length(global.obtainedweaponlist); i < len; i++){
					if (global.obtainedweaponlist[i] == obj_Sniper){
						checkexist = true;
					}
				}
				if (checkexist == false){
					if (global.buttercount < cost[3])
					{
					msg = "Not Enough Butter";
					break;
					}	
					else{
					instance_deactivate_object(obj_Weapon);
					global.buttercount -= cost[3];
					cost[3] = 100;
					array_push(global.obtainedweaponlist,obj_Sniper);
					instance_deactivate_object(obj_Weapon);
					msg = "Purchased";
					//play select Audio
					audio_play_sound(snd_purchase, 1000, false);
					break;
					}
				}
				if (checkexist == true)
				{
					if (global.buttercount < cost[3]){
						msg = "Not Enough Butter";
						break;	
					}
					else{
						instance_activate_object(obj_Sniper);
						if (obj_Sniper.bulletcost >= 2){
							obj_Sniper.bulletcost -= 2;
						}
						obj_Sniper.bulletsize += 0.25;
						obj_Sniper.reps += 1;
						global.buttercount -= cost[3];
						cost[3] += 100;
						msg = "Upgraded";
						instance_deactivate_object(obj_Weapon);
						break;
					}
				}
			}break;
		}
	}
}