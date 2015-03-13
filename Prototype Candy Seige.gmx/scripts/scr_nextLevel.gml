audio_play_sound(bgm_game, 100, true);

switch(global.level){
    case 1: room_goto(rm_lvl2); break;
    case 2: room_goto(rm_lvl3); break;
    case 3: room_goto(rm_lvl4); break;
    case 4: room_goto(rm_lvl5); break;
    default: 
        audio_stop_sound(bgm_game);
        room_goto(rm_gameWon);
        break;
}
