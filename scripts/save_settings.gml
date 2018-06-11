///save_settings([open, close])
if(argument_count == 0 or argument[0]) { ini_open("settings.ini"); }
ini_write_real("BOARD", "BLOCKS_WIDE", global.BLOCKS_WIDE);
ini_write_real("BOARD", "BLOCKS_TALL", global.BLOCKS_TALL);
ini_write_real("UI", "UI_PIXEL_WIDTH", global.UI_PIXEL_WIDTH);
ini_write_real("UI", "GHOST", global.ghost);
ini_write_real("UI", "GRID", global.grid);
ini_write_string("GAMEPLAY", "RAND_METHOD", global.rand_method);
ini_write_real("DEBUG", "DEBUG_OVERLAY", global.debug_overlay);
ini_write_real("DEBUG", "DEBUG_COLORS", global.debug_colors);
ini_write_real("DISPLAY", "REFRESH_RATE", global.refresh_rate);
ini_write_string("DISPLAY", "RESOLUTION", global.resolution);
ini_write_real("AUDIO", "MUSIC_LEVEL", global.music_level);
ini_write_real("AUDIO", "SFX_LEVEL", global.sfx_level);
ini_write_real("GAMEPLAY", "CLEAR_SPEED", global.clear_speed);


ini_write_real("GAME_CONTROLS", "HOLD", global.in_map[? gkeys.hold]);
ini_write_real("GAME_CONTROLS", "LEFT", global.in_map[? gkeys.left]);
ini_write_real("GAME_CONTROLS", "RIGHT", global.in_map[? gkeys.right]);
ini_write_real("GAME_CONTROLS", "CW", global.in_map[? gkeys.cw]);
ini_write_real("GAME_CONTROLS", "CCW", global.in_map[? gkeys.ccw]);
ini_write_real("GAME_CONTROLS", "HD", global.in_map[? gkeys.hd]);
ini_write_real("GAME_CONTROLS", "SD", global.in_map[? gkeys.sd]);

ini_write_real("MENU_CONTROLS", "MENU", global.in_map[? mkeys.menu]);
ini_write_real("MENU_CONTROLS", "LEFT", global.in_map[? mkeys.left]);
ini_write_real("MENU_CONTROLS", "RIGHT", global.in_map[? mkeys.right]);
ini_write_real("MENU_CONTROLS", "UP", global.in_map[? mkeys.up]);
ini_write_real("MENU_CONTROLS", "DOWN", global.in_map[? mkeys.down]);
ini_write_real("MENU_CONTROLS", "ACCEPT", global.in_map[? mkeys.accept]);
ini_write_real("MENU_CONTROLS", "BACK", global.in_map[? mkeys.back]);

ini_write_real("CONTROLS", "SIMULTANEOUS_MULTI_INPUT", global.multi_input);
if(global.multi_input)
{
    ini_check_and_delete("CONTROLS", "IN_METHOD");

    ini_write_real("GAME_CONTROLS", "HOLD_METHOD", global.in_method[? gkeys.hold]);
    ini_write_real("GAME_CONTROLS", "LEFT_METHOD", global.in_method[? gkeys.left]);
    ini_write_real("GAME_CONTROLS", "RIGHT_METHOD", global.in_method[? gkeys.right]);
    ini_write_real("GAME_CONTROLS", "CW_METHOD", global.in_method[? gkeys.cw]);
    ini_write_real("GAME_CONTROLS", "CCW_METHOD", global.in_method[? gkeys.ccw]);
    ini_write_real("GAME_CONTROLS", "HD_METHOD", global.in_method[? gkeys.hd]);
    ini_write_real("GAME_CONTROLS", "SD_METHOD", global.in_method[? gkeys.sd]);

    ini_write_real("MENU_CONTROLS", "MENU_METHOD", global.in_method[? mkeys.menu]);
    ini_write_real("MENU_CONTROLS", "LEFT_METHOD", global.in_method[? mkeys.left]);
    ini_write_real("MENU_CONTROLS", "RIGHT_METHOD", global.in_method[? mkeys.right]);
    ini_write_real("MENU_CONTROLS", "UP_METHOD", global.in_method[? mkeys.up]);
    ini_write_real("MENU_CONTROLS", "DOWN_METHOD", global.in_method[? mkeys.down]);
    ini_write_real("MENU_CONTROLS", "ACCEPT_METHOD", global.in_method[? mkeys.accept]);
    ini_write_real("MENU_CONTROLS", "BACK_METHOD", global.in_method[? mkeys.back]);
}
else
{
    ini_check_and_delete("GAME_CONTROLS", "HOLD_METHOD");
    ini_check_and_delete("GAME_CONTROLS", "LEFT_METHOD");
    ini_check_and_delete("GAME_CONTROLS", "RIGHT_METHOD");
    ini_check_and_delete("GAME_CONTROLS", "CW_METHOD");
    ini_check_and_delete("GAME_CONTROLS", "CCW_METHOD");
    ini_check_and_delete("GAME_CONTROLS", "HD_METHOD");
    ini_check_and_delete("GAME_CONTROLS", "SD_METHOD");

    ini_check_and_delete("MENU_CONTROLS", "MENU_METHOD");
    ini_check_and_delete("MENU_CONTROLS", "LEFT_METHOD");
    ini_check_and_delete("MENU_CONTROLS", "RIGHT_METHOD");
    ini_check_and_delete("MENU_CONTROLS", "UP_METHOD");
    ini_check_and_delete("MENU_CONTROLS", "DOWN_METHOD");
    ini_check_and_delete("MENU_CONTROLS", "ACCEPT_METHOD");
    ini_check_and_delete("MENU_CONTROLS", "BACK_METHOD");
    
    ini_write_real("CONTROLS", "IN_METHOD", global.in_method);
}

if(argument_count < 2 or argument[1]) { ini_close(); }
