///set_menu_item_value(list, menu_item_name, value)
var _li = argument0;
var _n = argument1;
var _v = argument2;

for(var _i = 0; _i < ds_list_size(_li); _i++)
{
    var _mi = _li[| _i];
    if(_mi.name == _n)
    {
        _mi.value = _v;
        exit;
    }
}
