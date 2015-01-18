globalvar ee;

if(wave_time == 600){
    wave += 1;
    wave_time = 0;
    countdown = 600;
    wave_enemies = min(5+floor(wave*0.4),16);
    ee = wave_enemies;
}

//Create enemies if needed
if(wave_time < 600){
    wave_time += 1;
    countdown -= 1;
}
if(wave_enemies > 0){
    if (wave_time == (ee-wave_enemies)*30+15)
    {
        instance_create(-32,0,obj_enemy);
        wave_enemies -= 1;
    }   
}
