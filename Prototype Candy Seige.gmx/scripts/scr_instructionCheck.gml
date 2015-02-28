//Case statements
switch(global.level){
    case 1:
        if(wave == 1 || wave = 2){
            canBuild = 1;
            if(!instance_exists(obj_okButton)) instance_create(view_wport*0.50, view_hport*0.95 , obj_okButton);
        }
        else{
            wave += 1;
            waveTime = 0;
            countdown = 450;
            spawnTime = -1;
            canBuild = 0;
        }
        break;
    default:
        //if(!instance_exists(obj_okButton)) instance_create(gui_width * 0.5, gui_height * 0.75, obj_okButton);
        break;
}
