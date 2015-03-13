switch(global.level){
    case 1:
        path_start(path_lvl1, 2, 0, 1);
        break;
    case 2:
        path_start(path_lvl2, 2, 0, 1);
        break;
    case 3:
        path_start(path_lvl3, 2, 0, 1);
        break;
    case 4:
        if(controller.wave < 2) path_start(path_lvl4_1, 2, 0, 1);
        else path_start(choose(path_lvl4_1, path_lvl4_2), 2, 0, 1);
        break;
    default:
        path_start(path_lvl1, 2, 0, 1);
        break;
}
