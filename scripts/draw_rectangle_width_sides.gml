///draw_rectangle_width(x1, y1, x2, y2, width, mode, sides)
var _x1 = argument[0];
var _y1 = argument[1];
var _x2 = argument[2];
var _y2 = argument[3];
var _w = argument[4];
var _m = argument[5];
var _s = argument[6]; //A boolean array corresponding to sides [Up, Right, Down, Left]

var _u = _s[0]; //Up
var _r = _s[1]; //Right
var _d = _s[2]; //Down
var _l = _s[3]; //Left

if(_m != "inner" && _m != "outer")
{
    if(_u) { draw_line_width(_x1-_w, _y1, _x2+_w, _y1, _w); } //Top line 
    if(_r) { draw_line_width(_x2, _y1, _x2, _y2, _w); } //Right line
    if(_d) { draw_line_width(_x1-_w, _y2, _x2+_w, _y2, _w); } //Bottom line
    if(_l) { draw_line_width(_x1, _y1, _x1, _y2, _w); } //Left line
}
else
{
    var _offset = _w/2;
    if(_m == "inner")
    {
        if(_u) { draw_line_width(_x1, _y1+_offset, _x2, _y1+_offset, _w); } //Top line
        if(_r) { draw_line_width(_x2-_offset, _y1+_offset, _x2-_offset, _y2-_offset, _w); } //Right line
        if(_d) { draw_line_width(_x1, _y2-_offset, _x2, _y2-_offset, _w); } //Bottom line
        if(_l) { draw_line_width(_x1+_offset, _y1+_offset, _x1+_offset, _y2-_offset, _w); } //Left line
    }
    else if(_m == "outer")
    {
        if(_u) { draw_line_width(_x1-_offset*2, _y1-_offset, _x2+_offset*2, _y1-_offset, _w); } //Top line
        if(_r) { draw_line_width(_x2+_offset, _y1-_offset, _x2+_offset, _y2+_offset, _w); } //Right line
        if(_d) { draw_line_width(_x1-_offset*2, _y2+_offset, _x2+_offset*2, _y2+_offset, _w); } //Bottom line
        if(_l) { draw_line_width(_x1-_offset, _y1-_offset, _x1-_offset, _y2+_offset, _w); } //Left line
    }
}
