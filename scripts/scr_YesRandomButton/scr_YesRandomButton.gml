// Invoked by: obj_RandomYesButton
// Spawns for an isDecision Random Card. Clicking this button looks up the next card to load and destroys
// the current Random Card.

var thisTitle, thisImage, thisDescription, thisCategory, thisAmount, thisType, thisChoice, thisYes, thisNo;


 // Does the random code exist in the grid?
if (ds_grid_value_exists(G.cardData, 0, CARD, G.totalCards, CARD, myCard.yesGoto))
{
	show_debug_message("YES BUTTON: Value exists.");
	var _column = ds_grid_value_x(G.cardData, 0, CARD, G.totalCards, CARD, myCard.yesGoto)
	thisTitle = G.cardData[# _column, TITLE];
	thisImage = asset_get_index(G.cardData[# _column, IMAGE]);
	thisDescription = G.cardData[# _column, DESCRIPTION];
	thisCategory = G.cardData[# _column, CATEGORY];
	thisAmount = G.cardData[# _column, AMOUNT];
	thisType = G.cardData[# _column, TYPE];
	thisChoice = G.cardData[# _column, ISCHOICE];
	thisYes = G.cardData[# _column, YESGOTO];
	thisNo = G.cardData[# _column, NOGOTO];	
} else 
{
	show_debug_message("Error, the value " + myCard.yesGoto + " does not exist in the ds grid. Shutting down.");
	scr_ExitGame();
}

var _x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) div 2);
var _y = camera_get_view_y(view_camera[0]) + 100;

var thisCard = instance_create_layer(_x/2, _y/3, "UI", obj_RandomCard);
thisCard.myCode = myCard.yesGoto;
thisCard.myTitle = thisTitle;
thisCard.myImage = thisImage;
thisCard.myDescription = thisDescription;
thisCard.myCategory = thisCategory;
thisCard.myAmount = thisAmount;
thisCard.myType = thisType;
thisCard.isDecision = thisChoice;
thisCard.yesGoto = thisYes;
thisCard.noGoto = thisNo;

instance_destroy(myCard);