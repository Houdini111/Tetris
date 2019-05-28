///valid_segment_location(x, y)
var _x = argument0;
var _y = argument1;
if(_x < 0) { return false; }
if(_y < 0) { return false; }
if(_x >= global.BLOCKS_WIDE) { return false; }
if(_y >= global.BLOCKS_TALL + 4) { return false; }

var _seg = global.segArr[_x, _y];
if(_seg != noone) { return false; }

return true;
