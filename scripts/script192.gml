///print_grid(ds_grid_id)
var g = argument0;

var _s = '■';
var _line = "";
var _v = noone;
for(var gx = 0; gx < ds_grid_width(g); gx++)
{
    line = "";
    for(var gy = 0; gy < ds_grid_height(g); gy++)
    {
        _v = ds_grid_get(g, gx, gy);
        if(_v == noone) { line += ' '; }
        else { line += _s; }
        line += ' ';
    }
    print(line);
}
