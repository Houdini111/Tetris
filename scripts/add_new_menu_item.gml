///add_new_menu_item(ds_list, name[, value])
if(ds_exists(argument[0], ds_type_list))
{
    var _mi = instance_create(-1, -1, c_menu_item);
    _mi.name = argument[1];
    if(argument_count == 3) { _mi.value = argument[2]; }
    ds_list_add(argument[0], _mi);
}
