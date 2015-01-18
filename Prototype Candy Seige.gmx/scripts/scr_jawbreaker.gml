var ii, dist, xx, yy;
if(firing > 0) firing += 1;
if(firing = 30/rate) firing = 0;

if(!instance_exists(target)) target = noone;
if instance_exists(obj_enemy){
    if(target = noone) target = instance_nearest(x,y,obj_enemy);
    if(point_distance(x,y,target.x,target.y) > range)
        target = noone;
    else if(firing = 0){
        firing = 1;
        //Create a bullet
        ii = instance_create(x,y-17,obj_jawbreaker);
        dist = point_distance(x,y,target.x,target.y)/24;
        xx = target.x+target.path_speed*dist*cos(target.direction*pi/180);
        yy = target.y-target.path_speed*dist*sin(target.direction*pi/180);
        ii.speed = 12;
        ii.direction = point_direction(x,y,xx,yy);
        ii.damage = damage;
    }
}
