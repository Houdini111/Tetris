///find_visible_index_by_name(list, name)
var _iOffset = 0;
for(var _i = 0; _i < ds_list_size(argument0); _i++)
{
    var _mi = argument0[| _i];
    if(_mi.state == menu_item_state.invisible)
    {
        _iOffset++;
        continue;
    }
    if(_mi.name == argument1)
    {
        return _i - _iOffset;
    }
}
