global.font_main = font_add_sprite(spr_dialog_font, 32, true, 5);
depth = -999; 

//textbox parameters
textbox_width = 1300;
textbox_height = 300;
border = 35;
line_sep = 50;
line_width = textbox_width - border * 2;
txtb_spr = spr_menu;
txtb_img = 0;
//set txtb_img_spd to the fps of the image / 60
txtb_img_spd = 0;


//the text
page = 0;
page_number = 0;
text[0] = "??? : Hey, you there!";
text[1] = "Ben : Huh?";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 0.5;

setup = false;

