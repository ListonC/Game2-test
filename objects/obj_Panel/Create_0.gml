/// @description INIT VARS

myPath = pth_Bnk_LeftPanel; // Empty path. Needs to be defined manually in Room Creation Code.
x = path_get_x(myPath,0);
y = path_get_y(myPath,0);

mySpeed = 0;
myTicks = 1; // Change in Creation Code;

xPadding = 0;
yPadding = 0;

myTitle = "Title";
dropColor = COLOR_BLACK_DARK;
titleColor = COLOR_WHITE_DARK;



bodyColor = COLOR_WHITE_LIGHT;
myLeftTexts = array_create(7, "Left: ");
myRightTexts = array_create(7, "..Right");