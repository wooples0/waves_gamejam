is_grabbable = true;
is_mouse_over = false;
state_grabbed = function(){
	if(global.item_grabbed != id){
		grab_state = state_notgrabbed;
		return;
	}
	x = mouse_x;
	y = mouse_y;
	
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