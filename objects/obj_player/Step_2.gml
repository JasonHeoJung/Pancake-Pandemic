if (place_meeting(x + global.playerspeed ,y,obj_obstacle) or place_meeting(x - global.playerspeed, y, obj_obstacle)){
	x = xprevious;
}

if (place_meeting(x, y+global.playerspeed, obj_obstacle) or place_meeting(x,y-global.playerspeed, obj_obstacle)){
	y = yprevious;
}

//border around map
if (x <= 20 or x >= room_width-25){
	x = xprevious;
}

if (y <= 50 or y >= room_height-40){
	y = yprevious;
}