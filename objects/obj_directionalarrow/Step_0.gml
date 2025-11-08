event_inherited();

if(mouse_check_button_pressed(mb_right) && grab_state == state_grabbed){
	image_angle = image_angle mod 360 - 90;
}

switch(image_angle){
	
	case -90:
		arrow_direction = d.down;
		break;
	case -180:
		arrow_direction = d.left;
		break;
	case -270:
		arrow_direction = d.up;
		break;
	default:
		arrow_direction = d.right;
		break;
}