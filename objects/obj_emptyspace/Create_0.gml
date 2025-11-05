u_pixel_h = shader_get_uniform(shd_outline, "pixelW");
u_pixel_w = shader_get_uniform(shd_outline, "pixelH");
texel_w = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texel_h = texture_get_texel_height(sprite_get_texture(sprite_index, 0));
