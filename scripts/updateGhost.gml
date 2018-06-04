///updateGhost

//if(global.active == id and !global.paused and moving)
if(!global.paused and moving)
{
    //var INC = global.segmentSize;

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
            //for(h = segments[i].y; h < room_height; h += INC)
            {
                //hit = collision_point(segments[i].x+.1, h+.1, obj_segment, false, false);
                hit = global.segArr[this_x, h];
                if( hit != noone and hit.parent != id )
                {
                    if(h - segments[i].y < yDiff) { yDiff = h - segments[i].y; }
                    break;
                }
            }
            //if(h >= room_height)
            if(h >= global.BLOCKS_TALL+4-1)
            {
                //if(room_height - segments[i].y < yDiff) { yDiff = room_height - segments[i].y; }
                if(global.BLOCKS_TALL+4 - segments[i].y < yDiff) { yDiff = global.BLOCKS_TALL+4 - segments[i].y; }
            }
        }
    }
    for(i = 0; i < 4; i++)
    {
        ghosts[i].y  = segments[i].y + yDiff;
    }
    
    prepareGhostSurface();
    /*
    ghostX = min(ghosts[0].x, ghosts[1].x, ghosts[2].x, ghosts[3].x);
    ghostY = min(ghosts[0].y, ghosts[1].y, ghosts[2].y, ghosts[3].y)-global.segmentSize;
    if(!surface_exists(ghostSurf)) { ghostSurf = surface_create(4*global.segmentSize, 4*global.segmentSize); }
    surface_set_target(ghostSurf);
    draw_clear_alpha(c_black, 1);
    surface_reset_target();
    */
    /*
    if(!surface_exists(ghostSurf)) { ghostSurf = surface_create(4*global.segmentSize, 4*global.segmentSize); }
    surface_set_target(ghostSurf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
    */
}
