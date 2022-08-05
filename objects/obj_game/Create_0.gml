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

if (instance_exists(obj_Weapon)){
	global.playerweapon = obj_Weapon;
}

global.enemyhealth = 1;
global.enemyspeed = 1;
global.wavecount = 1;
global.enemylist = [obj_normalPancake];
global.enemydropcount = 3;
global.enemydmg = 1;
global.poweruplist = [obj_DmgUp, obj_HealthUp, obj_FireRateUp, obj_InvinTime, obj_Regenrate, obj_SpeedUp, obj_SpeedUp];

window_set_cursor(cr_none);
cursor_sprite = spr_cursor;


