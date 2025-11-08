draw_sprite_stretched
(
	spr_blockade,
	0,
	x,
	y,
	row_length*32,
	(((GRID_CELLS-1) div row_length)+1)*32
);


for(var i = 0; i < GRID_CELLS; i++){
	var draw_x = x + (i mod row_length) * 32
	var draw_y = y + (i div row_length) * 32
	
	//var current_slot = instance_create_layer(draw_x, draw_y, "water_tile_layer", obj_slot);
	if(!grid_initialised){
		if(global.grid[i] == -1){
		var obj_to_draw = obj_emptyspace;
		var obj = instance_create_layer(draw_x, draw_y, "water_tile_layer", obj_to_draw);
		obj.grid_index = i;
		obj.x += sprite_get_width(obj.sprite_index) / 2;
		obj.y += sprite_get_height(obj.sprite_index) / 2;
		obj.is_interactable = true;
		global.grid[i] = obj.id;
		}
		else{
			var obj_to_draw = obj_blockade;
			var obj = instance_create_layer(draw_x, draw_y, "level_background", obj_to_draw);
			obj.grid_index = i;
			obj.x += sprite_get_width(obj.sprite_index) / 2;
			obj.y += sprite_get_height(obj.sprite_index) / 2;
			obj.is_interactable = false;
			global.grid[i] = obj.id;
		}	
}
	
	
	
	draw_set_colour(c_white);
	draw_text(draw_x,draw_y, string(i+1));
	draw_button((draw_x+16)-1, (draw_y+16)-1, (draw_x+16)+1, (draw_y+16)+1, true);
}