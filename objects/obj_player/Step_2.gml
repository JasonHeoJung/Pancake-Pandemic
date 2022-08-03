if (place_meeting(x + global.playerspeed ,y,obj_obstacle) or place_meeting(x - global.playerspeed, y, obj_obstacle)){
	x = xprevious;
}

if (place_meeting(x, y+global.playerspeed, obj_obstacle) or place_meeting(x,y-global.playerspeed, obj_obstacle)){
	y = yprevious;
}
