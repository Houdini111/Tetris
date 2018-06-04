///moveLinesDown(startingLine)
//for(var _h = argument0; _h > 0; _h -= global.segmentSize)
var _h = argument0;
for(_h = argument0; _h > 0; _h--)
{
    //print("-----------");
    //for(var w = 0; w < room_width; w += global.segmentSize)
    for(var _w = 0; _w < global.BLOCKS_WIDE; _w++)
    {
        global.segArr[_w, _h] = global.segArr[_w, _h-1];
        
        if(global.segArr[_w, _h] != noone) 
        { 
            global.segArr[_w, _h].y++; 
            //print( string(_w) + ", " + string(_h-1) + " to " + string(_w) + ", " + string(_h));
        }
        
        //if(global.segArr[_w, _h] != noone)
        //{
        //  
        //}
        //hit = collision_point(w, _h, obj_segment, false, false);
        //if( hit != noone ) { hit.y += global.segmentSize; }
    }
}
for(var _w = 0; _w < global.BLOCKS_WIDE; _w++)
{
    global.segArr[_w, 0] = noone;
}
//print("START AT  " + string(argument0) + " END AT " + string(_h));
