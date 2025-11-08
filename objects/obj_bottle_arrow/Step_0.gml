x = bottle_obj.x;
y = bottle_obj.y;

var ang = image_angle mod 360;

if(bottle_obj.move_state == bottle_obj.move_up){
	if(ang != -270){
		ang = approach(ang,-270, 5);
		image_angle = ang;
	}
}
if(bottle_obj.move_state == bottle_obj.move_down){
	if(ang != -90){
		ang = approach(ang,-90, 5);
		image_angle = ang;
	}
}
if(bottle_obj.move_state == bottle_obj.move_left){
	if(ang != -180){
		ang = approach(ang,-180, 5);
		image_angle = ang;
	}
}
if(bottle_obj.move_state == bottle_obj.move_right){
	if(ang != 0){
		ang = approach(ang,0, 5);
		image_angle = ang;
	}
}
