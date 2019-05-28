///all_segments_valid_with_offset(x, y)
for(var _i = 0; _i < 4; _i++)
{
    if(!valid_segment_location(segments[_i].x+argument0, segments[_i].y+argument1))
    {   
        return false;
    }
}
return true;
