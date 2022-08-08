if !audio_is_playing(snd_MStory)
{
	audio_sound_gain(snd_MCombat, 0, 2000);
	audio_play_sound(snd_MStory,1000, true);
	audio_sound_gain(snd_MStory, 0, 0);
	audio_sound_gain(snd_MStory, 0.7, 2000);
}
