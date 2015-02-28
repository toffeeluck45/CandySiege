globalvar ee;

if(!audio_is_playing(sfx_waveTimer))
    if(waveTime != -1) audio_play_sound(sfx_waveTimer, 100, 0);

//Wave Start
if(!instance_exists(obj_enemy)){
    if(waveTime == 400 && wave < 11){
        spawnTime = 0;
        waveEnemies = min(5+floor(wave*0.4), 16);
        ee = waveEnemies;
        waveTime = -1
    }
    else if(waveTime == 400){
        spawnTime = 0;
        waveEnemies = 1;
        ee = 1;
        waveTime = -1
    }
    
    if(spawnTime == 600 || (waveTime < 0 && spawnTime > 15 && waveEnemies == 0)){
        scr_instructionCheck();
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
        //scr_enemyGen(wave);
        if(wave < 4){
            with(instance_create(-32,0,obj_enemy)) path_start(path_lvl1, 2, 0, 1);
        }
        else instance_create(-32, 0, obj_queenAnt);
        waveEnemies -= 1;
    }
}
