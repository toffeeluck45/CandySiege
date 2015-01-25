switch(argument [0]){

    case 0: if(mouse_check_button_released(mb_left)){
                room_goto(rm_lvl1);
            } 
            break;
    case 1: if(mouse_check_button_released(mb_left)){
                room_goto(rm_options);
            } 
            break;
    case 2: if(mouse_check_button_released(mb_left)){
                game_end();
            }
            break;
    default: break;  
      
}
