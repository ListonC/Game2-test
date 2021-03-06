/// @description CHANGE CAMERA DESTINATION

switch (global.gameState)
{
	case GameState.GameStart :
		camera.destX = 0;
		camera.destY = 0;
	break;	
	
	case GameState.TitleScreen :
		camera.destX = 1280;
		camera.destY = 0;
	break;
	
	case GameState.NewGameScreen :
		camera.destX = 1920;
		camera.destY = 0;
	break;
	
	case GameState.ChooseBoatScreen :
		camera.destX = 1920;
		camera.destY = 720;
	break;
	
	case GameState.MapScreen :
		camera.destX = obj_MouseController.x;
		camera.destY = obj_MouseController.y;
		camera.lerp_cam = 0.90;
	break;
}

