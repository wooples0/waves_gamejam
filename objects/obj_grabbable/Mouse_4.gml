if(is_grabbable){
	grab_state = state_grabbed;
	if(global.item_grabbed == -1){
		global.item_grabbed = id;
	}
}