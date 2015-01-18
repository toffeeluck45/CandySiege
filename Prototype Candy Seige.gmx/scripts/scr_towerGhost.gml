draw_set_alpha(0.5);
if(coll_path = 0) draw_set_color(c_lime);
else draw_set_color(c_red);
draw_rectangle(x+32, y+32, x-32, y-32, 0);
draw_set_color(c_white);
draw_circle(x,y,range,1);
draw_set_alpha(1);
