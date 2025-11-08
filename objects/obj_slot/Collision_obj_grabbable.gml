if(other.grab_state != other.state_grabbed && grid_index == global.hovered_tile){
	if(is_interactable){
		global.hovered_tile = -1;
		other.x = x;
		other.y = y;
		other.is_placed = true;
	}
	
}

if(!is_interactable){
	image_index = 1;
}