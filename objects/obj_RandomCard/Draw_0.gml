/// @description DRAW SELF

if (sprite_exists(myImage))
{
  // Draw card
  draw_sprite(myImage, image_index, x, y);

  // Draw Card Title
  var _title_X1 = x + xOffset;
  var _title_Y1 = y + yOffset;
  var _width = sprite_get_width(myImage) - (2 * xOffset);
  var _lengthOne = string_length(myTitle);
  
  draw_set_font(titleFont);
  draw_set_halign(fa_center);
  draw_text_outline_ext(_title_X1 + (_width div 2), _title_Y1, myTitle, _width, -1, titleColor, outlineColor, 1, 2);
  
  draw_set_font(bodyFont);
  draw_set_halign(fa_left);
  draw_text_outline_ext(_title_X1, _title_Y1 + 25, myDescription, _width, -1, bodyColor, outlineColor, 1, 1);
  
  draw_set_halign(fa_left);
  draw_set_font(fnt_CodersCrux12);
}