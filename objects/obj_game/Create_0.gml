global.playerhealth = 100;
global.playermaxhealth = 100;
global.playerbulletdmg = 1;
global.playerfirerate = 1;
global.playerspeed = 5;
global.playerinvincible = false;
global.playerinvitime = 25;
global.playerhealthregen = 1;
global.playertthr = 100;
global.syrupcapacity = 100;
global.syrupcount = 100;
global.buttercount = 0;
global.gamePaused = false;
global.shopOpened = false;
instance_create_layer(0,0,"Instances",obj_Pistol);
instance_create_layer(0,0,"Instances",obj_Shotgun);
instance_create_layer(0,0,"Instances",obj_Rifle);
instance_create_layer(0,0,"Instances",obj_Sniper);
instance_deactivate_object(obj_Weapon);
global.obtainedweaponlist = [obj_Pistol];
equipped = 0;
instance_activate_object(obj_Pistol);
global.playerweapon = global.obtainedweaponlist[equipped];
global.enemyhealth = 1;
global.enemyspeed = 1;
global.wavecount = 1;
global.enemylist = [obj_normalPancake];
global.enemydropcount = 3;
global.enemydmg = 1;
global.poweruplist = [obj_DmgUp, obj_HealthUp, obj_FireRateUp, obj_InvinTime, obj_Regenrate, obj_SpeedUp, obj_TTRegen, obj_SyrupCapacity];
global.canstartwave = false;
global.score = 0;

window_set_cursor(cr_none);
cursor_sprite = spr_cursor;


