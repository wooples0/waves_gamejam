is_grabbable = true;
is_mouse_over = false;
is_over_tile = false;
current_tile = -1;
hovered_tile = -1;
state_grabbed = function(){
	if(global.item_grabbed != id){
		grab_state = state_notgrabbed;
		return;
	}
	x = mouse_x;
	y = mouse_y;
	
	if(hovered_tile != -1){
		is_over_tile = true;
	}
}

state_notgrabbed = function(){
	if(global.item_grabbed == id){
		global.item_grabbed = -1;
		with(obj_grid){
			if(other.hovered_tile != other.current_tile){
				other.x = global.grid[other.hovered_tile].x;
				other.y = global.grid[other.hovered_tile].y;
				other.current_tile = other.hovered_tile;
			}
		}
	}
	if(current_tile != hovered_tile){
		
	}
	
	with(obj_grid){
		if(point_in_rectangle(x,y,x-6,y-6,x-6+row_length*32,y-6+(((GRID_CELLS) div row_length)+1)*32)){
			for(var i = 0; i < GRID_CELLS; i++){
				var draw_x = x + (i mod row_length) * 32
				var draw_y = y + (i div row_length) * 32
				if(point_in_rectangle(mouse_x, mouse_y, draw_x, draw_y, draw_x + 32, draw_y + 32)){
					hovered_tile = i;
				}
			}
		}
	}
}

grab_state = state_notgrabbed;


u_pixel_h = shader_get_uniform(shd_outline, "pixelW");
u_pixel_w = shader_get_uniform(shd_outline, "pixelH");
texel_w = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texel_h = texture_get_texel_height(sprite_get_texture(sprite_index, 0));