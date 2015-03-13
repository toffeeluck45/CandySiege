globalvar ee;

if(!audio_is_playing(sfx_waveTimer))
    if(waveTime != -1) audio_play_sound(sfx_waveTimer, 100, 0);

//Wave Start
if(!instance_exists(obj_enemy)){
    if(waveTime == wTime && wave < maxWave){
        spawnTime = 0;
        waveEnemies = 5+wave+global.level+floor(wave*0.8);
        ee = waveEnemies;
        waveTime = -1
    }
    else if(waveTime == wTime && wave == maxWave){
        spawnTime = 0;
        waveEnemies = 1;
        ee = 1;
        waveTime = -1
    }
    
    if(spawnTime == sTime || (waveTime < 0 && spawnTime > 15 && waveEnemies == 0)){
        scr_instructionCheck();
    }
}

//Timers
if(waveTime >= 0 && waveTime < wTime){
    waveTime += 1;
    countdown -= 1;
}

if(spawnTime >= 0 && spawnTime < sTime)
    spawnTime += 1;

//Creating enemies
if(waveEnemies > 0){
    if (spawnTime == (ee-waveEnemies)*30+15){
        if(wave < maxWave)
            scr_chooseEnemy();
        else 
            scr_chooseBoss();
        waveEnemies -= 1;
    }
}
