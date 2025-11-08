event_inherited();
global.bottle_alive = true;
arrow = instance_create_layer(x,y,"instances", obj_bottle_arrow, {bottle_obj : id});
u_pixel_h = shader_get_uniform(shd_outline, "pixelW");
u_pixel_w = shader_get_uniform(shd_outline, "pixelH");
texel_w = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texel_h = texture_get_texel_height(sprite_get_texture(sprite_index, 0));
spd = 0.5;

target_x = x;
target_y = y;
a_rot_frac = 0.3;
a_rot_tol = 1;
a_angle = abs(arrow.image_angle);

move_up = function(){
	y-=spd*global.spd_mult;
}

move_down = function(){
	y+=spd*global.spd_mult;
}

move_left = function(){
	x-=spd*global.spd_mult;
}

move_right = function(){
	x+=spd*global.spd_mult;
}
move_pause = function(){
	x = lerp(x, target_x, 0.4);
	y = lerp(y, target_y, 0.4);
}
move_state = move_right;