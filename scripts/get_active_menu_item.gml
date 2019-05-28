///get_active_menu_item(list, n)
var _l = argument0;
var _n = argument1 + 1;

var _mi = noone;
var _i = -1;
while(_n > 0 && _i < ds_list_size(_l))
{
    _i++;
    _mi = _l[| _i];
    if(_mi.state == menu_item_state.enabled) 
    {
        _n--;
    }
}
if(_n == 0) { return _l[| _i]; }
return noone;
