is_grabbable = true;
is_mouse_over = false;
state_grabbed = function(){
	x = mouse_x;
	y = mouse_y;
	
}

state_notgrabbed = function(){

}

grab_state = state_notgrabbed;