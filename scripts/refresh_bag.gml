///refresh_bag()
while(ds_list_size(global.bag) < global.previewCount or ds_list_size(global.bag) < 2)
{
    to_add = ds_list_create();
    ds_list_copy(to_add, global.piece_list);
    
    while(ds_list_size(to_add) > 0)
    {
        r = irandom_range(0, ds_list_size(to_add)-1);
        ds_list_add(global.bag, to_add[| r]);
        ds_list_delete(to_add, r);
    }
    
    ds_list_destroy(to_add);
}
