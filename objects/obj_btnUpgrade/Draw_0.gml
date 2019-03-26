/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
draw_set_valign(fa_center);
draw_set_halign(fa_center);
var text1 = string(string(cost) + strRes);
var width = string_width(text1);
draw_text(x+sprite_width-width, y+sprite_height/2, text1);
draw_set_halign(fa_left);