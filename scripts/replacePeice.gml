///replacePeice(idOfPeiceToReplace)
x = argument0.x;
y = argument0.y;
type = argument0.type;
argument0.alarm[2] = 1;

if(type == "long")
{
    instance_create(x, y+(sprite_get_height(asset_get_index("spr_segment")))*0, obj_segment);
    instance_create(x, y+(sprite_get_height(asset_get_index("spr_segment")))*1, obj_segment);
    instance_create(x, y+(sprite_get_height(asset_get_index("spr_segment")))*2, obj_segment);    
    instance_create(x, y+(sprite_get_height(asset_get_index("spr_segment")))*3, obj_segment);
}
