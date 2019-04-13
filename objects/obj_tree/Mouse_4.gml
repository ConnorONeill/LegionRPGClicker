/// @description Insert description here
// You can write your code in this editor
var woodPlus = scr_woodClick();
global.wood += woodPlus;
var wText = instance_create_depth(mouse_x,mouse_y,-50, obj_disappearingText);
wText.colour = global.brown;
wText.text = string(woodPlus); 