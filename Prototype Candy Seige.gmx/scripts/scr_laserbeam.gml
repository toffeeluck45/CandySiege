//Position variables
var length = point_distance(x, y, target.x, target.y);
var angle = point_direction(x, y, target.x, target.y);

if(!instance_exists(target)) target = noone;
if(target != noone && firing == 1){

    draw_set_color(c_white);
    draw_line_width(x + lengthdir_x(length, angle + image_angle), y + lengthdir_y(length, angle + image_angle), target.x, target.y, 4);
    target.hp -= damage;
    if (target.hp < 1) target = noone;
    
}
draw_set_color(c_black);
