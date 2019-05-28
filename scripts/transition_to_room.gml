///transition_to_room(rm_id)
//Handles the extra steps that may need to be taken to move to each room
//This includes changing the state of menu items
var _rm = argument0;

var _mi = noone;
if(_rm == rm_main_menu)
{
    set_menu_item_state(main, "New Game", menu_item_state.enabled);
    set_menu_item_state(main, "Resume", menu_item_state.invisible);
    set_menu_item_state(main, "Main Menu", menu_item_state.invisible);
    
    set_menu_item_state(options, "Random", menu_item_state.enabled);
    set_menu_item_state(options, "Level Mode", menu_item_state.enabled);
}
else if(_rm == rm_game_board)
{
    set_menu_item_state(main, "New Game", menu_item_state.invisible);
    set_menu_item_state(main, "Resume", menu_item_state.enabled);
    set_menu_item_state(main, "Main Menu", menu_item_state.enabled);
    
    set_menu_item_state(options, "Random", menu_item_state.invisible);
    set_menu_item_state(options, "Level Mode", menu_item_state.invisible);
}

selection = 0;

//Game objects (even persistent ones) are destroyed if they're not active at room change
//Activate menu before room change to ensure it stays
//rm_game_board's init code must then re-deactivate it
instance_activate_object(global.menu);

room_goto(_rm);
