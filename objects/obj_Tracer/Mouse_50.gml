/// @description MOVE TRACER
if (!instance_exists(obj_ButtonRandomPARENT))
{
	if (!collision_point(mouse_x, mouse_y, obj_UIMapRedo, false, true))
	{
		if (collision_point(mouse_x, mouse_y, obj_hexTester, true, true))
		{
			var _mx = mouse_x - (mouse_x % 2);
			var _my = mouse_y - (mouse_y % 2);

			if (mp_grid_path(global.ourGrid, myPath, x, y, _mx, _my, 1) and isDone == false)
			{
				path_start(myPath, 8, path_action_stop, false);
			}
	
			with (obj_MapRightLabel)
			{
				alarm_set(0, myTicks);
			}
	
			with (obj_UIMapRedo)
			{
				alarm_set(0, 5);
			}
		}
	}
}