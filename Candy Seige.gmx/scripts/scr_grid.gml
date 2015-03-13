xx = 0;
yy = 0;
while(xx < room_width or yy < room_height){
    draw_set_color(c_white);
    draw_line_width(xx, 0, xx, room_height, 1);
    draw_line_width(0, yy, room_width, yy, 1);
    draw_set_color(c_black);
    xx += 32;
    yy += 32;
}
xx = 0;
yy = 0;
