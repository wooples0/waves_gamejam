if(is_placed && place_meeting(x,y,obj_bottle)){
	
	if(other.x != x && other.y != y && position_corrected == false){
		position_corrected = true;
		other.target_x = x;
		other.target_y = y;
		other.move_state = other.move_pause;
		alarm[0] = 4 * game_get_speed(gamespeed_fps);
	}
	else{
		switch(arrow_direction){
		case d.up:
			if(other.move_state != other.move_up){
				other.x = x;
				other.y = y;
				other.move_state = other.move_up;
			}
			break;
		case d.down:
			if(other.move_state != other.move_down){
				other.x = x;
				other.y = y;
				other.move_state = other.move_down;
			}
			break;
		case d.left:
			if(other.move_state != other.move_left){
				other.x = x;
				other.y = y;
				other.move_state = other.move_left;
			}
			break;
		case d.right:
			if(other.move_state != other.move_right){
				other.x = x;
				other.y = y;
				other.move_state = other.move_right;
			}
			break;
	}
	}
	
	
}