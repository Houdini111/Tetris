///refresh_size()
var _s = "";
if(global.fullscreen)
{
    _s = string(display_get_width()) + " x " + string(display_get_height());      
}
else
{
    _s = string(global.VISIBLE_WIDTH) + " x " + string(global.VISIBLE_HEIGHT);
}
resolution_change(_s, true);
