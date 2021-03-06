/// @description TALLY CHANGES

// Update Turn Number
G.TurnCount += 1;

// Consume Rations
// This is handled by obj_RationTurnText
// obj_MyBarrels.MyBarrels[# 0,21] -= G.DistanceCost;

// Update World Qty Table
with (obj_WorldQty)
{
	event_user(1);	
}

// Calculate Time Spent travelling to determine turn order
var _percent = obj_MyShip.ReadyPercent / 100;
var _currentSpeed = round(obj_MyShip.myShip[? "SailSpeed"] * _percent);
timeSpent = (G.DistanceTravelled * G.MilesPerTile) / _currentSpeed;

// Calculate Ticket Revenue
ticketRevenue = obj_MyShip.CurrentPassengers * obj_MyLedger.TicketPrice;
// Cash Update is handled by obj_PassengerTurnText
// obj_MyLedger.Cash += ticketRevenue;

alarm_set(myAlarms, room_speed);

