draw_set_font(global.font_main);

draw_text_transformed_color(room_width/2 - 50,100,"wave:"+string(global.wavecount),2,2, 0, c_white,c_white,c_white,c_white, 1);
draw_text_transformed_color(room_width/2 - 50,150,"butter:"+string(global.buttercount),2,2, 0, c_white,c_white,c_white,c_white, 1);

if (global.canstartwave == true){
	draw_text_transformed(room_width/2-150, room_height/2,"PRESS K TO START NEXT WAVE",3,3, 0);
}



