///print_2D_arr(ds_grid_id)
var g = argument0;

var _s = '■';
var _line = "";
var _v = noone;
for(var gx = 0; gx < array_height_2d(g); gx++)
{
    line = "";
    for(var gy = 0; gy < array_height_2d(g); gy++)
    {
        _v = ds_grid_get(g, gx, gy);
        if(_v == noone) { line += ' '; }
        else { line += _s; }
        line += ' ';
    }
    print(line);
}
