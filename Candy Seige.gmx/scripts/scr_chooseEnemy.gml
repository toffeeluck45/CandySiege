switch(global.level){
    case 1:
        switch(wave){
            case 10:
                with(instance_create(-32,0,obj_enemy)) scr_path();
                break;
            default:
                with(instance_create(-32,0,obj_enemy)) scr_path();
                break;
        }
        break;
    default:
        with(instance_create(-32,0,obj_enemy)) scr_path();
        break;       
}
