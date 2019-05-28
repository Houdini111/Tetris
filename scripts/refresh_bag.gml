///refresh_bag()
while(ds_list_size(global.bag) < global.previewCount or ds_list_size(global.bag) < 2)
{
    var _to_add = ds_list_create();
    ds_list_copy(_to_add, global.piece_list);
    ds_list_shuffle(_to_add);
    ds_list_copy(global.bag, _to_add);
    ds_list_destroy(_to_add);
}
