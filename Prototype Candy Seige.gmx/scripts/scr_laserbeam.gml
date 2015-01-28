//Tower tip position
var length = 25;

//Drawing laserbeam
if(!instance_exists(target)) target = noone;
if(target != noone && firing == 1){

    draw_set_color(c_white);
    draw_line_width(x + lengthdir_x(length, image_angle), y + lengthdir_y(length, image_angle), target.x, target.y, 4);
    target.hp -= damage;
    if (target.hp < 1) target = noone;
    
}
draw_set_color(c_black);
