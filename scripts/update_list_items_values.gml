///update_list_items_values(list)
var _name = argument0;
var _li = sections[? _name];
if(_name == "options")
{
    for(var _i = 0; _i < ds_list_size(_li); _i++)
    {
        var _mi = _li[| _i];
        if(_mi.name == "Grid")
        {
            _mi.value = boolean_replace(global.grid, "oo");
        }
        else if(_mi.name == "Ghost")
        {
            _mi.value = global.GHOST_VALUE_NAMES[global.ghost + 1];
        }
        else if(_mi.name == "Random")
        {
            _mi.value = global.rand_method;
        }
        else if(_mi.name == "Level Mode")
        {
            _mi.value = global.LEVEL_MODE_NAMES[global.level_mode];
        }
    }
}
else if(_name == "controls")
{
    for(var _i = 0; _i < ds_list_size(_li); _i++)
    {
        var _mi = _li[| _i];
        
        if(_mi.name == "Simul Multi-dev In")
        {
            _mi.value = boolean_replace(global.multi_input, "oo");
        }
        else if(_mi.name == "Input Device")
        {
            var _text = "N/A";
            if(!global.multi_input) 
            { 
                var _m = global.in_method;
                print("METHOD: " + string(_m));
                if(_m == in_modes.kb) { _text = "Keyboard"; }
                if(_m == in_modes.mouse) { _text = "Mouse"; }
                if(!is_undefined(_m) and floor(_m) == in_modes.gp)  { _text = "Gamepad " + string(floor(_m*100 - floor(_m*100))); }
            }
            _mi.value = _text;
        }
    }
}
else if(_name == "gamecontrols")
{
    for(var _i = 1; _i < ds_list_size(_li); _i++)
    {
        var _mi = _li[| _i];
        
        var _key = -1;
        if(_mi.name == "Left") { _key = gkeys.left; }
        else if(_mi.name == "Right") { _key = gkeys.right; }
        else if(_mi.name == "CW") { _key = gkeys.cw; }
        else if(_mi.name == "CCW") { _key = gkeys.ccw; }
        else if(_mi.name == "Hard") { _key = gkeys.hd; }
        else if(_mi.name == "Soft") { _key = gkeys.sd; }
        else if(_mi.name == "Hold") { _key = gkeys.hold; }
        
        if(_key != -1)
        {
            if(global.multi_input)
            {
                _mi.value = input_to_string(global.in_map[? _key], global.in_method[? _key]) + " | " + string(device_to_string(global.in_method[? _key]));
            }
            else
            {
                _mi.value = input_to_string(global.in_map[? _key], global.in_method);
            }
        }
    }
}
else if(_name == "menucontrols")
{
    for(var _i = 1; _i < ds_list_size(_li); _i++)
    {
        var _mi = _li[| _i];
        
        var _key = -1;
        if(_mi.name == "Up") { _key = mkeys.up; }
        else if(_mi.name == "Down") { _key = mkeys.down; }
        else if(_mi.name == "Left") { _key = mkeys.left; }
        else if(_mi.name == "Right") { _key = mkeys.right; }
        else if(_mi.name == "Accept") { _key = mkeys.accept; }
        else if(_mi.name == "Back") { _key = mkeys.back; }
        else if(_mi.name == "Menu") { _key = mkeys.menu; }
        
        if(_key != -1)
        {
            if(global.multi_input)
            {
                _mi.value = input_to_string(global.in_map[? _key], global.in_method[? _key]) + " | " + string(device_to_string(global.in_method[? _key]));
            }
            else
            {
                _mi.value = input_to_string(global.in_map[? _key], global.in_method);
            }
        }
    }
}
else if(_name == "display")
{
    for(var _i = 0; _i < ds_list_size(_li); _i++)
    {
        var _mi = _li[| _i];
        if(_mi.name == "Resolution")
        {
            _mi.value = global.resolution;
        }
        else if(_mi.name == "Max FPS")
        {
            _mi.value = global.refresh_rate;;
        }
        else if(_mi.name == "Fullscreen")
        {
            _mi.value = boolean_replace(global.fullscreen, "oo");
        }
        else if(_mi.name == "Debug UI")
        {
            _mi.value = boolean_replace(global.debug_overlay, "oo");
        }
    }
}
else if(_name == "sound")
{
    for(var _i = 0; _i < ds_list_size(_li); _i++)
    {
        var _mi = _li[| _i];
        if(_mi.name == "MUSIC")
        {
            _mi.value = global.music_level;
        }
        else if(_mi.name == "SFX")
        {
            _mi.value = global.sfx_level;;
        }
    }
}
