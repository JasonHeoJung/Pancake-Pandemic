global.buttercount += 1;
audio_play_sound(snd_butterPickup,1000,false);
audio_sound_gain(snd_butterPickup, 0.2, 0);

if (global.syrupcount < global.syrupcapacity){
	global.syrupcount += 4;
	if (global.syrupcount > global.syrupcapacity){
		global.syrupcount = global.syrupcapacity;
	}
}



