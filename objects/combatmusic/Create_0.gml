if !audio_is_playing(snd_MCombat)
{
	audio_sound_gain(snd_MStory, 0, 2000);
	audio_play_sound(snd_MCombat, 1000, true);
	audio_sound_gain(snd_MCombat, 0, 0);
	audio_sound_gain(snd_MCombat, 0.3, 2000);
}


