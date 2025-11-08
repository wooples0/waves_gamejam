is_grabbable = true;
is_mouse_over = false;
current_tile = -1;
is_placed = false;
global.hovered_tile = -1;
state_grabbed = function(){
	if(global.item_grabbed != id){

		grab_state = state_notgrabbed;
		return;
	}
	is_placed = false;
	x = clamp(mouse_x, 40, 345);
	y = clamp(mouse_y, 65, 280);
	global.hovered_tile = -1;
	for(var i = 0; i < array_length(global.grid); i++){
		if(place_meeting(other.x, other.y, global.grid[i])){
			global.hovered_tile = global.grid[i].grid_index;
		}
	}
	
}

state_notgrabbed = function(){
	if(global.item_grabbed == id){
		global.item_grabbed = -1;
	}
	
}

grab_state = state_notgrabbed;


u_pixel_h = shader_get_uniform(shd_outline, "pixelW");
u_pixel_w = shader_get_uniform(shd_outline, "pixelH");
texel_w = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texel_h = texture_get_texel_height(sprite_get_texture(sprite_index, 0));