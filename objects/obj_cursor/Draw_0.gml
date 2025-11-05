draw_self();
draw_set_colour(c_white);
draw_text(0,0,"(" + string(x) + ", " + string(y) + ")");

draw_set_colour(c_white);
draw_rectangle(mouse_x-0.5,mouse_y-0.5,mouse_x+1,mouse_y+1,false);
draw_set_colour(#3D4E65)
draw_rectangle(mouse_x,mouse_y,mouse_x+0.5,mouse_y+0.5,false);