///device_to_string(device)
if(argument0 == in_modes.kb) { return "kb"; }
if(argument0 == in_modes.mouse) { return "ms"; }
if(!is_undefined(argument0) and floor(argument0) == in_modes.gp) 
{
    var slot = floor((argument0 - in_modes.gp) * 100);
    return "gp" + string(slot); 
}
