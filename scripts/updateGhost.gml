///updateGhost
if(!global.paused and moving)
{
    var yDiff = room_height;

    for(var i = 0; i < 4; i++) 
    { 
        var this_x = segments[i].x;
        var ghost_edge = true;
        ghosts[i].x = this_x; 
        
        for(var j = 0; j < 4; j++)
        {
            if(i != j and this_x == segments[j].x)
            {
                if(segments[i].y < segments[j].y)
                { 
                    ghost_edge = false; 
                    j = 4;
                }
            }
        }
        
        if(ghost_edge)
        {
            for(var h = segments[i].y; h < global.BLOCKS_TALL+4; h++)
            {
                hit = global.segArr[this_x, h];
                if( hit != noone and hit.parent != id )
                {
                    if(h - segments[i].y < yDiff) { yDiff = h - segments[i].y; }
                    break;
                }
            }
            if(h >= global.BLOCKS_TALL+4-1)
            {
                if(global.BLOCKS_TALL+4 - segments[i].y < yDiff) { yDiff = global.BLOCKS_TALL+4 - segments[i].y; }
            }
        }
    }
    for(i = 0; i < 4; i++)
    {
        ghosts[i].y  = segments[i].y + yDiff;
    }
    
    prepareGhostSurface();
}
