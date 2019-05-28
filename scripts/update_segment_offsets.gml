///update_segment_offsets()
//A sort of "rotate", but the change of the "rot" value must be done beforehand,
//and this just updates the values of the offsets to match

//It feels pretty dirty to use something that tries to construct a script's name by parts
//However, because the rotation rules are the longest part of the code by far and 
//that's with only one rotation ruleset *and* because game maker does not support object
//functions, this is my work around.
var _rs = global.rotation_rule;
var _t = type;
var _scriptName = string_lower(_rs + "_" + _t);
var _script = asset_get_index(_scriptName);
if(_script != -1)
{
    script_execute(_script);
}
else
{
    show_debug_message("ERROR: COULD NOT FIND SCRIPT WITH NAME: " + _scriptName);
}
