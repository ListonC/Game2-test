/// @description RESUME PATH
// Invoked by: obj_OkayButton

path_clear_points(myCourse); // Wipe this course because we've set a new one.

// Start a loop in the middle of where we are at in our previous course.
// Plot a course to the next hexagon in the list that obj_Tracer built
// Stop this loop after you've plotted a course for all the remaining tiles in the list.
show_debug_message("PlayerBoat: my CurrentTile is " + string(currentTile));
for (var i = currentTile; i < ds_list_size(global.selectedHex); i++)
{
	show_debug_message("PlayerBoat: UE2 execute loop.")
	var _hex = ds_list_find_value(global.selectedHex, i);
	if (!is_undefined(_hex))
		path_add_point(myCourse, _hex.x, _hex.y, mySpeed);
}

TargetX = path_get_point_x(myCourse, 1);
TargetY = path_get_point_y(myCourse, 1);
show_debug_message("Player Boat: My X and Y is: " + string(x) + "," + string(y));
show_debug_message("Player Boat: Target X and Y is: " + string(TargetX) + "," + string(TargetY));
canSail = true;
