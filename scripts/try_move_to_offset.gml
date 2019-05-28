///try_move_to_offset(x, y)
var _valid = all_segments_valid_with_offset(argument0, argument1);
if(_valid) 
{ 
    x += argument0;
    y += argument1; 
    return true; 
}
return false;
