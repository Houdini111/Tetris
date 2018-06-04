var clearCount = 0;
var parents = ds_list_create();

//for(var h = room_height-.1; h >= 0; h -= global.segmentSize)
for(var h = global.BLOCKS_TALL-1+4; h >= 0; h--)
{
    //print(h);
    var isSolid = true;
    //for(w = 0; w < room_width; w += global.segmentSize)
    for(var w = 0; w < global.BLOCKS_WIDE; w++)
    {
        //var hit = collision_point(w, h, obj_segment, false, false);
        //if( !position_meeting(w, h, obj_segment) )
        //if(hit != noone)
        if(global.segArr[w, h] == noone)
        {            
            //print(string(h) + ": " + string(w));
            isSolid = false;
            //w = room_width;
            break;
        }
    }
    
    if(isSolid)
    {
        clearCount++;

        //for(var w = 0; w < room_width; w += global.segmentSize) 
        for(var w = 0; w < global.BLOCKS_WIDE; w++)
        { 
            //var instance = collision_point(w, h, obj_segment, false, false);
            //var p = instance.parent;
            var inst = global.segArr[w, h];
            var p = inst.parent;
            if( ds_list_find_index(parents, p) == -1 ) { ds_list_add(parents, p); }
            
            if(p.segments[0] == inst) { p.segments[0] = noone; }
            else if(p.segments[1] == inst) { p.segments[1] = noone; }
            else if(p.segments[2] == inst) { p.segments[2] = noone; }
            else if(p.segments[3] == inst) { p.segments[3] = noone; }
            
            instance_destroy(inst);
            global.segArr[w, h] = noone;
            //print(string(w) + ", " + string(h));
            //if(global.clear_speed != 0) { instance_create(w, h+.1, obj_phantomSeg); }
            if(global.clear_speed != 0) { instance_create(w*global.segmentSize, h*global.segmentSize, obj_phantomSeg); }
        }
        
        if(global.clear_speed == 0) 
        { 
            moveLinesDown(h);
            h += global.segmentSize;
            //if(surface_exists(global.STATIC_SEGMENT_SURFACE)) { surface_free(global.STATIC_SEGMENT_SURFACE); }
        }
        else 
        { 
            ds_list_add(global.clearedLines, h); 
            global.active = noone;
            global.canSpawnNew = false;
            global.control.clearDelayTimer = global.clear_speed * room_speed;
        }
        
        if(surface_exists(global.STATIC_SEGMENT_SURFACE)) 
        { 
            //show_debug_message("LINE CLEAR");
            surface_free(global.STATIC_SEGMENT_SURFACE); 
            with(obj_segment) { visible = true; } 
        }
        
    }
}

for(var i = 0; i < ds_list_size(parents); i++)
{
    if( parents[|i].segments[0] == noone and 
        parents[|i].segments[1] == noone and 
        parents[|i].segments[2] == noone and 
        parents[|i].segments[3] == noone)
            { instance_destroy(parents[|i]); }
}
ds_list_destroy(parents);

global.lines += clearCount;
global.level += clearCount;
if(global.level > 500) { global.fallSpeed = global.levels[500]/256; }
else { global.fallSpeed = global.levels[global.level]/256; } 


