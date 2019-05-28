///ds_lists_destroy(list1[, list2, list3, ...])
var _c = argument_count;
var _l = noone;

for(var _i = 0; _i < argument_count; _i++)
{
    _l = argument[_i];
    if(ds_exists(_l, ds_type_list))
    {
        ds_list_destroy(_l);
    }    
}
