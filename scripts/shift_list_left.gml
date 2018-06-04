///shift_list_left(id, num)
for(n = 0; n < argument1; n++)
{
    for(i = 0; i < ds_list_size(argument0)-1; i++)
        { argument0[|i] = argument0[|i+1]; }
    ds_list_delete(argument0, ds_list_size(argument0)-1);
}
