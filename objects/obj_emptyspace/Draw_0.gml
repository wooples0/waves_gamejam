shader_set(shd_outline);
shader_set_uniform_f(u_pixel_w, texel_w*2);
shader_set_uniform_f(u_pixel_h, texel_h*2);
draw_self();
shader_reset();