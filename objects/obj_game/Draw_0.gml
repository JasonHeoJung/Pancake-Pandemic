draw_set_font(global.font_main);
draw_set_halign(fa_middle);
draw_sprite_ext(spr_textbox, 0, room_width/2 - 97, 100, 2.4, 1.5, 0, c_white, 1)
draw_text_transformed_color(room_width/2,105,"wave:"+string(global.wavecount),3,3, 0, c_white,c_white,c_white,c_white, 1);
draw_text_transformed_color(room_width/2,140,"butter:"+string(global.buttercount),3,3, 0, c_white,c_white,c_white,c_white, 1);
draw_text_transformed_color(room_width/2,175,"enemies left:"+string(instance_number(obj_parentpancake)),3,3, 0, c_white,c_white,c_white,c_white, 1);


if (global.canstartwave == true){
	draw_text_transformed(room_width/2, room_height/2,"PRESS K TO START NEXT WAVE",3,3, 0);
}

//mouse over dmg up powerup
if (position_meeting(mouse_x,mouse_y,obj_DmgUp) and global.playerbulletdmg != 2){
	if (global.playerbulletdmg != 2){
		draw_text_transformed(mouse_x, mouse_y-60,"Increases Bullets Damage",3,3, 0);
	}
	else{
		draw_text_transformed(mouse_x, mouse_y-60,"Bullet Damage Maxed Out!",3,3, 0);	
	}		
}

//mouse over fire rate powerup
if (position_meeting(mouse_x,mouse_y,obj_FireRateUp)){
	if (global.playerfirerate != 0.10){
		draw_text_transformed(mouse_x, mouse_y-60,"Increases Fire Rate",3,3, 0);
	}
	else{
		draw_text_transformed(mouse_x, mouse_y-60,"Fire Rate Maxed Out!",3,3, 0);		
	}
}


//mouse over health up
if (position_meeting(mouse_x,mouse_y,obj_HealthUp)){
	draw_text_transformed(mouse_x, mouse_y-60,"Increases Max Health",3,3, 0);
}

//mouse over Invi time powerup
if (position_meeting(mouse_x,mouse_y,obj_InvinTime)){
	draw_text_transformed(mouse_x, mouse_y-60,"Increases Invincibility period",3,3, 0);
}

//mouse over more btter powerup
if (position_meeting(mouse_x,mouse_y,obj_MoreButter)){
	draw_text_transformed(mouse_x, mouse_y-60,"Enemies drop more butter",3,3, 0);
}

//mouse over regen powerup
if (position_meeting(mouse_x,mouse_y,obj_Regenrate)){
	draw_text_transformed(mouse_x, mouse_y-60,"Increases health regeneration",3,3, 0);
}

//mouse over speed up powerup
if (position_meeting(mouse_x,mouse_y,obj_SpeedUp)){
	if (global.playerspeed != 10){
		draw_text_transformed(mouse_x, mouse_y-60,"Increases your speed",3,3, 0);
	}
	else{
		draw_text_transformed(mouse_x, mouse_y-60,"Speed Maxed Out!",3,3, 0);
	}	
}


//mouse over syrupcapacity powerup
if (position_meeting(mouse_x,mouse_y,obj_SyrupCapacity)){
	if (global.syrupcapacity != 200){
		draw_text_transformed(mouse_x, mouse_y-60,"Increases maximum syrup capacity",3,3, 0);
	}
	else{
		draw_text_transformed(mouse_x, mouse_y-60,"Syrup Capacity Maxed Out!",3,3, 0);
	}
} 
 

//mouse TTregen 
if (position_meeting(mouse_x,mouse_y,obj_TTRegen)){
	if (global.playertthr != 15){
		draw_text_transformed(mouse_x, mouse_y-60,"Lowers Time till health regeneration kicks in",3,3, 0);
	}
	else{
		draw_text_transformed(mouse_x, mouse_y-60,"Max Time Till health Regeneration reached!",3,3, 0);
	}
}