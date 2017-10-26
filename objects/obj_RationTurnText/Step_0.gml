/// @description AFTER DONE, MAKE FLOATER

if (obj_EndTurn.isDone == true)
{
	if (allDone == false)
	{
		var _xspot = x + string_width(labelOne) + string_width(string(valueOne));
		var _thisString = string(G.DistanceCost);
		var thisFloater = instance_create_layer(_xspot, y, "Floaters", obj_EndTurnFloater);
		thisFloater.myString = _thisString;
		thisFloater.myColor = COLOR_RED_LIGHT;
		allDone = true;
		with (obj_PassengerTurnText)
		{
			alarm_set(0, room_speed); // Passenger Text Spawn Floater	
		}
	}
}