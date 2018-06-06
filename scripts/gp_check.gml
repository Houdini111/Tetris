///gp_check()
if(!ds_exists(global.pads, ds_type_list)) { global.pads = ds_list_create(); }
ds_list_clear(global.pads);
print("--------");
print("BEGIN GP CHECK");
print("........");
var gp_count = gamepad_get_device_count();
for(var i = 0; i < gp_count; i++)
{
    if(gamepad_is_connected(i))
    {
        ds_list_add(global.pads, i);
        print("GAMEPAD " + string(ds_list_size(global.pads)) + " IN SLOT " + string(i));
    } 
}
if(ds_list_size(global.pads) == 0) { print("NO GAMEPADS FOUND"); }
print("--------");


