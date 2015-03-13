//Set Transparency
draw_set_alpha(.4);

//Range Circle
draw_set_color(c_white);
draw_set_circle_precision(64);
draw_circle(x, y, range, false);
draw_set_colour(c_black);
draw_set_alpha(1);
