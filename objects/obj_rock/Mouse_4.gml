/// @description Insert description here
// You can write your code in this editor
var stonePlus = scr_stoneClick()
global.gems += stonePlus;
var sText = instance_create_depth(mouse_x,mouse_y,-50, obj_disappearingText);
sText.text = string(stonePlus); 