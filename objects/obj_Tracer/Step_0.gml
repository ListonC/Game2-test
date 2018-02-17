/// @description UPDATE BOOLS
thisHex = instance_place(x,y, obj_hexTester);
if (thisHex) // am I colliding with a tile? Bob- Returns false if no instance there
{
    if (thisHex.isEncountered == false and thisHex.isAccessible == true) //is this tile cold--not encountered before? is it a water tile?
    {
        show_debug_message("it's true")
        thisHex.myState = States.Leader;
        obj_PathTracker.receiveID = thisHex.id; // obj_PathTracker adds hexagons to the ds_list of hexagons
        with (obj_PathTracker)
        {
            event_user(0);
        }
        thisHex.isEncountered = true;
    }
	
	var _currentPort = scr_GetPortString(G.CurrentTown);
    if (thisHex.landTitle != "" and thisHex.landTitle != _currentPort) // Where "Port0_1" for example is the current Port we're at
    {
        isDone = true; // stop moving.
		
		if (obj_Player.hasEvent == false) // This check is here in case if a Neutral Event redirects the ship
		{
			obj_SetSail.isVisible = true; // Show the Set Sail button
			obj_ButtonBoardPassengers.isTriggered = true;
		}
		
		destinationPort = thisHex.landTitle; // For the Passenger UI labels
		obj_MyShip.MyDestination = scr_GetPort(destinationPort);
		
    }
}

if (path_position == 1 and obj_Player.hasEvent == true and isDone != true)
{
	show_debug_message("Tracer Step: Path Complete, Let's Resolve Event.")
	obj_Player.eventResolved = true;
	isDone = true; // So that it only does this once
}