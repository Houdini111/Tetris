clearCount = 0;

clears[0] = -1
for(i = room_height; i > 0; i -=global.segmentSize) { clears[array_length_1d(clears)] = -1 }



for(h = room_height-1; h > 0; h-=global.segmentSize)
{
    isSolid = true;
    for(w = 1; w < global.width; w+=global.segmentSize)
    {
        if( !position_meeting(w, h, obj_segment))
        {            
            isSolid = false;
            w = global.width;
        }
        else
        {
            if( (collision_point(w, h, obj_segment, false, false)).alarm[0] != -1 )
            {
                isSolid = false;
                w = global.width;
            }
        }
    }
    
    if(isSolid)
    {
        show_debug_message("LINE CLEAR")
        clearCount++;
        
        for(i = 0; i < array_length_1d(clears); i++) 
        {   
            if(clears[i] == -1)
            {
                clears[i] = h-1;
                i = array_length_1d(clears);
            }
        }
        
        for(w = 1; w < global.width; w+=global.segmentSize) { (collision_point(w, h, obj_segment, false, false)).alarm[0] = 1; }
    }
}
for(i = array_length_1d(clears)-1; i >= 0 ; i--)
{
    if(clears[i] > -1)
    {
        for(h = clears[i]; h > 0; h -= global.segmentSize)
        {
            for(w = 1; w < global.width; w += global.segmentSize)
            {
               if( (collision_point(w, h, obj_segment, false, false)) != noone)
                {
                    if( (collision_point(w, h, obj_segment, false, false)).alarm[0] == -1 )
                    {
                        (collision_point(w, h, obj_segment, false, false)).moveDown++
                        if( (collision_point(w, h, obj_segment, false, false)).alarm[1] == -1)  { (collision_point(w, h, obj_segment, false, false)).alarm[1] = 1; }
                    }
                }   
            }
        } 
        clears[i] = -1
        i = array_length_1d(clears)-1;   
    }
}

global.lines += clearCount;
global.level += clearCount;
if(global.level > 500) { global.fallSpeed = global.levels[500]/256; }
else { global.fallSpeed = global.levels[global.level]/256; } 

//for( i = 0; i < array_length_1d(clears); i++) { clears[i] = -1; }
