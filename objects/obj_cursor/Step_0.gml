x = mouse_x;
y = mouse_y;

if(mouse_check_button(0)){
	state = state_idle;
}
else{
	state = state_hold;
}

state();