/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg color
/// @arg alpha

gml_pragma("forceinline");

if ( argument2-argument0 > 0 ){
    draw_sprite_ext(spr_ui_pixel,0,argument0,argument1,argument2-argument0,argument3-argument1,0,argument4,argument5);
}
