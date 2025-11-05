if(is_grabbable && is_mouse_over){
	shader_set(shd_outline);
	shader_set_uniform_f(u_pixel_w, texel_w);
	shader_set_uniform_f(u_pixel_h, texel_h);
	draw_self();
	shader_reset();
}
if(grab_state == state_grabbed){
	shader_set(shd_brightness);
	shader_set_uniform_f(shader_get_uniform(shd_brightness, "brightness"), 0.2);
	draw_self();
	shader_reset();
}
else{
	draw_self();
	shader_reset();
}