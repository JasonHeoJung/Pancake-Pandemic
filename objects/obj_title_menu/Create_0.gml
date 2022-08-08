width = 64;
height = 104;

op_border = 8;
op_space = 16;

pos = 0;

option[0, 0] = "Start Game"
option[0, 1] = "Credits"
option[0, 2] = "Quit Game"

option[1, 0] = "Programmers: Jason Heo, Mar Yong Rui"
option[1, 1] = "Animation: Jason Heo"
option[1, 2] = "UI: Jason Heo, Mar Yong Rui"
option[1, 3] = "Music: Incompetech.com"
option[1, 4] = "SFX: Freesound.org"
option[1, 5] = "Back"

op_length = 0;
menu_level = 0;

// Audio
if !audio_is_playing(snd_MStory)
{
	audio_sound_gain(snd_MCombat, 0, 2000);
	audio_play_sound(snd_MStory,1000, true);
	audio_sound_gain(snd_MStory, 0, 0);
	audio_sound_gain(snd_MStory, 0.7, 2000);
}