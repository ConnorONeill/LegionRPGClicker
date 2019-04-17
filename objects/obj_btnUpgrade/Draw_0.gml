/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
draw_set_font(fnt_brian10);
event_inherited();
draw_set_valign(fa_center);
draw_set_halign(fa_center);
var text1 = string(scr_numString(cost) + " " +strRes);
var width = string_width(text1);
draw_set_halign(fa_right);
draw_text(x+(sprite_width)-10, y+sprite_height/2, text1);
draw_set_halign(fa_left);
draw_set_font(global.defaultFont);