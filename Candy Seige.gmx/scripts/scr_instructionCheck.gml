//Case statements
switch(global.level){
    case 1:
        if(wave == 3 || wave == 7){
            canBuild = 1;
            if(!instance_exists(obj_okButton)) instance_create(view_wport*0.40625, view_hport*0.89166667 , obj_okButton);
        }
        else{
            if(wave != maxWave){
                wave += 1;
                waveTime = 0;
                countdown = 400;
                spawnTime = -1;
                canBuild = 0;
            }
        }
        break;
    case 2:
        if(wave == 4){
            canBuild = 1;
            if(!instance_exists(obj_okButton)) instance_create(view_wport*0.40625, view_hport*0.89166667 , obj_okButton);
        }
        else{
            if(wave != maxWave){
                wave += 1;
                waveTime = 0;
                countdown = 400;
                spawnTime = -1;
                canBuild = 0;
            }
        }
        break;
    default:
        if(wave != maxWave){
            wave += 1;
            waveTime = 0;
            countdown = 400;
            spawnTime = -1;
            canBuild = 0;
        }
        break;
}
