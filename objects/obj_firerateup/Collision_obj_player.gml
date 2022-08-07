// Inherit the parent event
if (global.playerfirerate > 0.10){
	global.playerfirerate -= 0.10;
}
else{
	global.buttercount += 100;
}
event_inherited();


