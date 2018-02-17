/// @description MOVE BOAT

if (canSail) // starts at false, set to 'true' in User Event 1
{
	speed = mySpeed;
	var _dist = point_distance(x, y, TargetX, TargetY); // How close are we to the next cell?
	//show_debug_message("Player Boat: Distance to next cell is: " + string(_dist));
	move_towards_point(TargetX, TargetY, min(mySpeed, _dist))
	if (_dist < 1)
	{
		show_debug_message("Player Boat: Arrived at next cell.");
		// We have arrived at the next cell
		currentTile += 1;
		path_delete_point(myCourse, 0);
		if (path_get_number(myCourse) > 0)
		{
		TargetX = path_get_point_x(myCourse, 0);
		TargetY = path_get_point_y(myCourse, 0);
		}
		//show_debug_message("Player Boat Step: My X and Y is: " + string(x) + "," + string(y));
		//show_debug_message("Player Boat Step: Target X and Y is: " + string(TargetX) + "," + string(TargetY));
		if (!hasEvent)
		{
			var _chance = random(0.99);
			show_debug_message("random roll is " + string(_chance));
			if (_chance < G.RandomChance)
			{
				hasEvent = true;
				canSail = false;
				show_debug_message("Player Boat Step: A Random Event occured!");
			}
		}
	} else
	{
		if (currentTile == ds_list_size(global.selectedHex))
		{
			show_debug_message("Player Boat Step: Reached Last Cell.");
			hasArrived = true; // TRiggers GameState Mapscreen to goto Room End
		}
	}
}

if (eventResolved)
{
	show_debug_message("Player Boat Step: Let's resume sailing.")
	event_user(2); // Resume Sailing	
	eventResolved = false; // So that it only does this once.
}

if (!canSail)
	speed = 0;