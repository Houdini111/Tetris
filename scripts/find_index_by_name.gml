///find_index_by_name(list, name)
for(var _i = 0; _i < ds_list_size(argument0); i++)
{
    var _mi = argument0[| _i];
    if(_mi.name == argument1)
    {
        return _i;
    }
}
