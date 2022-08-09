// Inherit the parent event
event_inherited();

instance_create_layer(x,y,"EnemyProjectile",obj_explosion);
audio_play_sound(snd_explosion,1000, false);