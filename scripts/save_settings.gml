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
if(argument_count < 2 or argument[1]) { ini_close(); }
