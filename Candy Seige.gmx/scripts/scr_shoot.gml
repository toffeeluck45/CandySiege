//Tower Cooldown
if(firing > 0) firing += 1;
if (firing >= rate) firing = 0;

//Emeny in Range
if (!instance_exists(target)) target = noone;
if(instance_exists(obj_enemy)){
    if(target == noone) target = instance_nearest(x, y, obj_enemy);
    if(point_distance(x,y,target.x,target.y) > range)
        target = noone;
    else if (firing == 0)
        firing = 1;
}

//Depth Settings
if(firing = 1) depth = -3;
else depth = -2;

