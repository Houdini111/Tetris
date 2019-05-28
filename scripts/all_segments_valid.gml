///all_segments_valid()
for(var _i = 0; _i < 4; _i++)
{
    if(!valid_segment_location(segments[_i].x, segments[_i].y))
    {   
        return false;
    }
}
return true;
