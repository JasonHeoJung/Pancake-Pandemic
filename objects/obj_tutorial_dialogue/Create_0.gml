textbox_width = 9;
textbox_height = 3;
border = 7;
line_sep = 50;
line_width = textbox_width - border*2;

// Text
text[0] = "Movement: Up, Down, Left, Right = WASD";
text[1] = "Shoot: Left Click";
text[2] = "Open Shop: E";
text[3] = "Press Esc to Close";
text_legnth[0] = string_length(text[0]);

setup = true;
instance_deactivate_object(obj_pause);