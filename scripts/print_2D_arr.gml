///print_2D_arr(2d_arr)
var g = argument0;

var _s = '■';
var _line = "";
var _v = noone;
print(array_height_2d(g));
for(var gx = 0; gx < array_height_2d(g); gx++)
{
    line = "";
    for(var gy = 0; gy < array_height_2d(g); gy++)
    {
        _v = g[gx, gy];
        if(_v == noone) { line += ' '; }
        else { line += _s; }
        line += ' ';
    }
    print(line);
}
