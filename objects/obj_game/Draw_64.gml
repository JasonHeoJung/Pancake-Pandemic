draw_set_font(global.font_main);
draw_set_halign(fa_left);
draw_sprite_ext(spr_textbox, 0, 20, 20, 2.7, 2, 0, c_white, 1)
draw_text_transformed_color(30, 45,"Wave:"+string(global.wavecount),3,3, 0, c_white,c_white,c_white,c_white, 1);
draw_text_transformed_color(30, 80,"Butter:"+string(global.buttercount),3,3, 0, c_white,c_white,c_white,c_white, 1);
draw_text_transformed_color(30, 115,"Enemies left:"+string(instance_number(obj_parentpancake)),3,3, 0, c_white,c_white,c_white,c_white, 1);
draw_text_transformed_color(30, 150,"Score:"+string(global.score),3,3, 0, c_white,c_white,c_white,c_white, 1);
