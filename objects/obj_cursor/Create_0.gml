state = 0;
global.item_grabbed = -1;
grid_hover = -1;
slot_hover = -1;

state_idle = function(){
	sprite_index = spr_cursor;
}

state_hold = function(){
	sprite_index = spr_cursor_grab;

	
}