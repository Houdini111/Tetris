///surface_create_log(width, height)
var _w = argument0;
var _h = argument1;
var _s = surface_create(_w, _h);
show_debug_message("CREATED SURFACE ID: " + string(_s) + " WITH DIMENSIONS W:" + string(_w) + " H:" + string(_h));
return _s;
