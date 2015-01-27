// Get Object Position on screen
var towerPos = instance_position(mouse_x, mouse_y, obj_sugarlaser);
var towerButton = instance_position(mouse_x,mouse_y,obj_t2Button);
var upgradeButton = instance_position(mouse_x, mouse_y, obj_upgrade);

if(upgradeButton) exit;
if(!instance_exists(ii_select)) ii_select = noone;    
if(mouse_check_button_pressed(mb_left)){

    if(!towerPos)
        if(!towerButton){    
            ii_select = noone;
            obj_sugarlaser.selected = 0;
        }
    
}

if(mouse_check_button_pressed(mb_right)){    
    ii_select = noone;
    obj_sugarlaser.selected = 0;
}
