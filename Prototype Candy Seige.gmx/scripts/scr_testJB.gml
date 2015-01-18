var ii, dist, xx, yy;
if (!instance_exists(target)) target = noone;
if (target != noone && firing = 1){
    ii = instance_create(x,y,obj_jawbreaker);
    dist = point_distance(x,y,target.x,target.y)/24;
    xx = target.x+target.path_speed*dist*cos(target.direction*pi/180);
    yy = target.y-target.path_speed*dist*sin(target.direction*pi/180);
    ii.speed = 12;
    ii.direction = point_direction(x,y,xx,yy);
    ii.damage = damage;
}
