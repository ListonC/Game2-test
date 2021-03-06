/// @description DRAW TXT AND SELF

draw_self();

// TITLE TEXT
draw_set_font(fnt_Venice20);

// Main Title
draw_text_outline(xPadding, yPadding, myTitle, titleColor, dropColor, 1, 2);

// END TITLE


// BODY TEXT - LEFT
draw_set_font(fnt_CodersCrux19); 

for (var i = array_length_1d(myLeftTexts) - 1; i > -1; i--;)
{
	var _y = (yPadding + 28) + (i * 18);
	draw_set_halign(fa_left);
	draw_text_outline(xPadding, _y, myLeftTexts[i], bodyColor, dropColor, 1, 1);	
}

// BODY TEXT - RIGHT
draw_set_font(fnt_CodersCrux19); 

for (var i = array_length_1d(myRightTexts) - 1; i > -1; i--;)
{
	var _y = (yPadding + 28) + (i * 18);
	var _x = xPadding + 162;
	draw_set_halign(fa_right);
	draw_text_outline(_x, _y, myRightTexts[i], bodyColor, dropColor, 1, 1);	
}

draw_set_halign(fa_left);