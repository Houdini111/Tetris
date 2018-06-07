///input_to_string(input, mode)
if( argument1 == in_modes.kb )
{
    if( argument0 >= $41 and argument0 <= $5a ) { return string( chr(argument0) ); }
    else 
    { 
        switch(argument0)
        {
            case vk_left: return "LEFT ARROW";
            case vk_right: return "RIGHT ARROW";
            case vk_up: return "UP ARROW";
            case vk_down: return "DOWN ARROW";
            case vk_enter: return "ENTER";
            case vk_escape: return "ESCAPE";
            case vk_space: return "SPACE";
            case vk_shift: return "SHIFT";
            case vk_control: return "CONTROL";
            case vk_alt: return "ALT";
            case vk_backspace: return "BACKSPACE";
            case vk_tab: return "TAB";
            case vk_home: return "HOME";
            case vk_end: return "END";
            case vk_delete: return "DELETE";
            case vk_insert: return "INSERT";
            case vk_pageup: return "PAGE UP";
            case vk_pagedown: return "PAGE DOWN";
            case vk_pause: return "PAUSE";
            case vk_printscreen: return "PRT_SCR";
            case vk_f1: return "F1";
            case vk_f2: return "F2";
            case vk_f3: return "F3";
            case vk_f4: return "F4";
            case vk_f5: return "F5";
            case vk_f6: return "F6";
            case vk_f7: return "F7";
            case vk_f8: return "F8";
            case vk_f9: return "F9";
            case vk_f10: return "F10";
            case vk_f11: return "F11";
            case vk_f12: return "F12";
            case vk_numpad0: return "NUM 0";
            case vk_numpad1: return "NUM 1";
            case vk_numpad2: return "NUM 2";
            case vk_numpad3: return "NUM 3";
            case vk_numpad4: return "NUM 4";
            case vk_numpad5: return "NUM 5";
            case vk_numpad6: return "NUM 6";
            case vk_numpad7: return "NUM 7";
            case vk_numpad8: return "NUM 8";
            case vk_numpad9: return "NUM 9";
            case vk_multiply: return "*";
            case vk_divide: return "/";
            case vk_add: return "+";
            case vk_subtract: return "-";
            case vk_decimal: return ".";
        }
        return string(argument0); 
    }
}
else if( argument1 = in_modes.gp )
{
    switch( argument0 )
    {
        case gp_face1: return "A";
        case gp_face2: return "B";
        case gp_face3: return "X";
        case gp_face4: return "Y";
        case gp_shoulderl: return "LB";
        case gp_shoulderlb: return "LT";
        case gp_shoulderr: return "RB";
        case gp_shoulderrb: return "RT";
        case gp_select: return "SELECT";
        case gp_start: return "START";
        case gp_stickl: return "L_STK";
        case gp_stickr: return "R_STK";
        case gp_padu: return "D_UP";
        case gp_padd: return "D_DOWN";
        case gp_padl: return "D_LEFT";
        case gp_padr: return "D_RIGHT";
        case gp_axislh: return "L_STK_HOR";
        case gp_axislv: return "L_STK_VER";
        case gp_axisrh: return "R_STK_HOR";
        case gp_axisrv: return "R_STK_VER";
    }
}
else if( argument1 == in_modes.mouse  )
{
    switch(argument0)
    {
        case mb_left: return "LEFT MOUSE";
        case mb_middle: return "MIDDLE MOUSE";
        case mb_right: return "RIGHT MOUSE";
    }
    
}


return "UNKNOWN";
