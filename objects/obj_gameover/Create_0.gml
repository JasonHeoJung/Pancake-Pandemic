text1 = "Press Space to Continue"
text2 = "Score: " + string(global.score);

width = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
height = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 + 50;

audio_play_sound(snd_gameover,1000,false);
