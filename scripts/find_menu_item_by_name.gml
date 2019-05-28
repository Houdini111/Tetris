///find_menu_item_by_name(menu_item_list, str_name)
var _l = argument0;
var _n = argument1;

for(var _i = 0; _i < ds_list_size(_l); _i++)
{
    var _mi = _l[| _i];
    if(_mi.name == _n)
    {
        return _mi;
    }
}

return noone;
