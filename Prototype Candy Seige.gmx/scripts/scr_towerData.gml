switch(global.level){
    case 1:
        if(controller.wave == 3){
            draw_sprite_ext(spr_towerSprite, 1, myParent.width*0.1625, myParent.height*0.408333, global.scale_factor, global.scale_factor, 0, -1, 1);
            draw_set_font(fnt_title);
            draw_set_halign(fa_center);
            draw_set_valign(fa_middle);
            draw_set_color(make_color_rgb(160, 44, 44));
            draw_text(myParent.width * 0.5, myParent.height * 0.1724, "ICING TOWER");
            draw_set_font(fnt_description);
            draw_set_halign(fa_left);
            draw_set_valign(fa_top);
            draw_set_color(c_black);
            draw_text_ext(left + (width*0.0259067), top + height*0.034482, "Icing Towers shoot out thick icing slowing them down. It'll be a while before they can chew out of that!", 48, 380);
        }
        else if(controller.wave == 7){
            draw_sprite_ext(spr_towerSprite, 2, myParent.width*0.1625, myParent.height*0.408333, global.scale_factor, global.scale_factor, 0, -1, 1);
            draw_set_font(fnt_title);
            draw_set_halign(fa_center);
            draw_set_valign(fa_middle);
            draw_set_color(make_color_rgb(160, 44, 44));
            draw_text(myParent.width * 0.5, myParent.height * 0.1724, "SUGARLASER");
            draw_set_font(fnt_description);
            draw_set_halign(fa_left);
            draw_set_valign(fa_top);
            draw_set_color(c_black);
            draw_text_ext(left + (width*0.0259067), top + height*0.034482, "Sugarlasers shoot concetrated beams of pure sugar. IT NEVER MISSES!", 48, 380);
        }
        break;
    case 2:
        if(controller.wave == 4){
            draw_sprite_ext(spr_towerSprite, 3, myParent.width*0.1625, myParent.height*0.408333, global.scale_factor, global.scale_factor, 0, -1, 1);
            draw_set_font(fnt_title);
            draw_set_halign(fa_center);
            draw_set_valign(fa_middle);
            draw_set_color(make_color_rgb(160, 44, 44));
            draw_text(myParent.width * 0.5, myParent.height * 0.1724, "BLOWTORCH");
            draw_set_font(fnt_description);
            draw_set_halign(fa_left);
            draw_set_valign(fa_top);
            draw_set_color(c_black);
            draw_text_ext(left + (width*0.0259067), top + height*0.034482, "Once these blowtorches served only in the fiery forges of the Candy Kingdom! Now it's a weapon that burns our enemies to crisp.", 48, 380);
        }
    default: break;
}
