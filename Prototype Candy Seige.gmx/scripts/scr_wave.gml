globalvar ee;

if(!audio_is_playing(sfx_waveTimer))
    if(waveTime != -1) audio_play_sound(sfx_waveTimer, 100, 0);

//Wave Start
if(!instance_exists(obj_enemy)){
    if(waveTime == 400){
        spawnTime = 0;
        waveEnemies = min(5+floor(wave*0.4), 16);
        ee = waveEnemies;
        waveTime = -1
    }
    if(spawnTime == 600 || (waveTime < 0 && spawnTime > 15 && waveEnemies == 0)){
        wave += 1;
        waveTime = 0;
        countdown = 400;
        spawnTime = -1;
    }
}

//Timers
if(waveTime >= 0 && waveTime < 400){
    waveTime += 1;
    countdown -= 1;
}

if(spawnTime >= 0 && spawnTime < 600)
    spawnTime += 1;

//Creating enemies
if(waveEnemies > 0){
    if (spawnTime == (ee-waveEnemies)*30+15){
        instance_create(-32,0,obj_enemy);
        waveEnemies -= 1;
    }   
}
