x = mouse_x;
y = mouse_y;

if(!mouse_check_button(mb_left)){
	state = state_idle;
}
else{
	state = state_hold;
}

state();