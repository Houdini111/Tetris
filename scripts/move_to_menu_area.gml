///move_to_menu_area(section_name)
selection = 0;
last_area = area;
area = argument0;
if(area == "controls")
{
    gp_check();
}
goal_x = views[? area+"_x"];
goal_y = views[? area+"_y"];
old_x = x;
old_y = y;
update_list_items_values( area );
