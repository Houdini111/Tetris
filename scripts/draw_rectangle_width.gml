///draw_rectangle_width(x1, y1, x2, y2, outline, width[, mode])
var _x1 = argument[0];
var _y1 = argument[1];
var _x2 = argument[2];
var _y2 = argument[3];
var _outline = argument[4];
var _w = argument[5];

if(argument_count == 6)
{
    draw_line_width(_x1-_w, _y1, _x2+_w, _y1, _w); //Top line
    draw_line_width(_x2, _y1, _x2, _y2, _w); //Right line
    draw_line_width(_x1-_w, _y2, _x2+_w, _y2, _w); //Bottom line
    draw_line_width(_x1, _y1, _x1, _y2, _w); //Left line
}
else
{
    var _m = argument[6];
    var _offset = _w/2;
    if(_m == "inner")
    {
        draw_line_width(_x1, _y1+_offset, _x2, _y1+_offset, _w); //Top line
        draw_line_width(_x2-_offset, _y1+_offset, _x2-_offset, _y2-_offset, _w); //Right line
        draw_line_width(_x1, _y2-_offset, _x2, _y2-_offset, _w); //Bottom line
        draw_line_width(_x1+_offset, _y1+_offset, _x1+_offset, _y2-_offset, _w); //Left line
    }
    else if(_m == "outer")
    {
        draw_line_width(_x1-_offset*2, _y1-_offset, _x2+_offset*2, _y1-_offset, _w); //Top line
        draw_line_width(_x2+_offset, _y1-_offset, _x2+_offset, _y2+_offset, _w); //Right line
        draw_line_width(_x1-_offset*2, _y2+_offset, _x2+_offset*2, _y2+_offset, _w); //Bottom line
        draw_line_width(_x1-_offset, _y1-_offset, _x1-_offset, _y2+_offset, _w); //Left line
    }
}

if(!_outline)
{
    draw_rectangle(_x1, _y1, _x2, _y2, false);
}
