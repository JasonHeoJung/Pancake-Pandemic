PancakeHp -= global.playerweapon.weapondamage;
if !audio_is_playing(snd_hit)
{
	audio_play_sound(snd_hit,1000, false)
}
flashAlpha = 1;