if(!instance_exists(ii_select)) ii_select = noone;

if(mouse_check_button_pressed(mb_left)){
    if(!instance_position(mouse_x,mouse_y,obj_sugarlaser))
    if(!instance_position(mouse_x,mouse_y,obj_t2Button)){    
        ii_select = noone;
        obj_sugarlaser.selected = 0;
    }
}

if(mouse_check_button_pressed(mb_right)){    
    ii_select = noone;
    obj_sugarlaser.selected = 0;
}
