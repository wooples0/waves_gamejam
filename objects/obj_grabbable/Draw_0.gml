if(is_grabbable && is_mouse_over && grab_state != state_grabbed){
	shader_set(shd_brightness);
	shader_set_uniform_f(shader_get_uniform(shd_brightness, "brightness"), 0.2);
}
else{
	shader_reset();
}
draw_self();
shader_reset();