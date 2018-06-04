///boolean_replace(bool[, mode])
if(argument_count = 1 or argument1 == "tf")
{
    if(argument0) { return "True"; } 
    else { return "False"; }
}
else if(argument1 == "oo")
{
    if(argument0) { return "On"; } 
    else { return "Off"; }
}
