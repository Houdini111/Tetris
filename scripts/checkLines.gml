var clearCount = 0;
var parents = ds_list_create();
/*
print("BEFORE");
var _b = '░';
var _s = '■';
var _line = "";
var _v = noone;
for(var gy = 0; gy < global.BLOCKS_TALL+4; gy++)
{
    line = "";
    for(var gx = 0; gx < global.BLOCKS_WIDE; gx++)
    {
        if(global.segArr[gx, gy] == noone) { line += _b; }
        else { line += _s; }
    }
    print(line);
}
print("---------");
*/
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
        show_debug_message("DESTROY ROW AT " + string(h));
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
            
            //show_debug_message("DESTROY BLOCK AT (" + string(w) + ", " + string(h) + ")");
            instance_destroy(inst);
            global.segArr[w, h] = noone;
            //print(string(w) + ", " + string(h));
            //if(global.clear_speed != 0) { instance_create(w, h+.1, obj_phantomSeg); }
            if(global.clear_speed != 0) { instance_create(w*global.segmentSize, h*global.segmentSize, obj_phantomSeg); }
        }
        
        if(global.clear_speed == 0) 
        { 
            moveLinesDown(h);
            //h += global.segmentSize;
            h += 1;
            //if(surface_exists(global.STATIC_SEGMENT_SURFACE)) { surface_free(global.STATIC_SEGMENT_SURFACE); }
        }
        else 
        { 
            ds_list_add(global.clearedLines, h); 
            global.active = noone;
            global.canSpawnNew = false;
            global.control.clearDelayTimer = global.clear_speed * room_speed;
        }
        
        global.control.clearStaticSurf = true;
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

if(global.level_mode == LEVEL_MODES.STANDARD)
{
    global.level = floor(global.lines/10);
    global.fallSpeed = (power((0.8-((global.level-1)*0.007)), (-1*(global.level-1))))/60;
    switch(clearCount)
    {
        case 1:
            global.points += 100*global.level;
            break;
        case 2:
            global.points += 300*global.level;
            break;
        case 3:
            global.points += 500*global.level;
            break;
        case 5:
            global.points += 800*global.level;
            break;
    }
}
else if(global.level_mode == LEVEL_MODES.TGM)
{
    global.level += clearCount;
    if(global.level > 500) { global.fallSpeed = global.levels[500]/256; }
    else { global.fallSpeed = global.levels[global.level]/256; } 
}
