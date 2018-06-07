///resolution_change(resolutionString[, resize])
var w = "";
var h = "";
var past = false;
for(var i = 1; i <= string_length(argument[0]); i++)
{
    var c = string_char_at(argument[0], i)
    if( c == "x") { past = true; } 
    else if( string_digits(c) != "" ) 
    {  
        if(!past) { w += c; }
        else { h += c; }
    }
}

global.VISIBLE_WIDTH = real(w);
global.VISIBLE_HEIGHT = real(h);

if(argument_count == 2 and argument[1])
{
    global.segmentSize = floor(global.VISIBLE_HEIGHT/(global.BLOCKS_TALL));

    var ROOM_HEIGHT = global.VISIBLE_HEIGHT+(4*global.segmentSize);
    var ROOM_WIDTH = global.VISIBLE_WIDTH;
    
    global.WINDOW_HEIGHT = global.VISIBLE_HEIGHT; //If any top or bottom UI is added, add it's size here
    global.WINDOW_WIDTH = ROOM_WIDTH+global.GUI_LEFT_SIZE+global.GUI_RIGHT_SIZE;
    
    for(i = 1; i <= room_last; i++)
    {
        if(room_exists(i))
        {
            room_set_height(i, ROOM_HEIGHT);
            room_set_width(i, ROOM_WIDTH);
            
            room_set_view(i, 0, true, 
                0, ROOM_HEIGHT-global.VISIBLE_HEIGHT, //View x,y 
                global.WINDOW_WIDTH, global.VISIBLE_HEIGHT, //View w,h
                0, 0,   //Port x,y
                global.VISIBLE_WIDTH, global.VISIBLE_HEIGHT, //Port w,h
                0, 0, 0, 0, -1 );
        
            room_set_view_enabled(i, true); 
        }
    }
    
    surface_resize(application_surface, global.WINDOW_WIDTH, global.VISIBLE_HEIGHT);
    window_set_size(global.WINDOW_WIDTH, global.WINDOW_HEIGHT);
    
    with(obj_menu)
    {
        w = global.WINDOW_WIDTH;
        h = global.WINDOW_HEIGHT;
    }
}
