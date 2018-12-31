///generate_controls_surfcontrols_surface = surface_create(w*PADDING, h);
draw_set_font(controls[|0]);
_fnt_height = string_height("ABCDEFGHIJKLEMNOPQRSTUVWXYZ") * (1+PADDING); 
var _height = _fnt_height * ds_list_size(controls);
var _width = w-w*PADDING;
var _surf = surface_create_log(_width, _height);
surface_set_target(_surf);
draw_set_halign(fa_left);

for(_i = 0; _i < ds_list_size(controls)-1; _i++)
{
    draw_text(0, large_height*(_i+0.5)-y, controls[|_i+1]);
    draw_set_halign(fa_right);
    if(_i == 0) { draw_text(_width, large_height*(_i+0.5), "Go Back"); }
    else if(_i == 1) { draw_text(_width, large_height*(_i+0.5), "L_ARROW"); }
    else if(_i == 2) { draw_text(_width, large_height*(_i+0.5), "R_ARROW"); }
    else if(_i == 3) { draw_text(_width, large_height*(_i+0.5), "S"); }
    else if(_i == 4) { draw_text(_width, large_height*(_i+0.5), "A"); }
    else if(_i == 5) { draw_text(_width, large_height*(_i+0.5), "SPACE"); }
    else if(_i == 6) { draw_text(_width, large_height*(_i+0.5), "D_ARROW"); }
    else if(_i == 7) { draw_text(_width, large_height*(_i+0.5), "SHIFT"); }
    else if(_i == 8) { draw_text(_width, large_height*(_i+0.5), "ESC"); }
    draw_set_halign(fa_left);
}
draw_set_halign(fa_left);
surface_reset_target();
return _surf;
