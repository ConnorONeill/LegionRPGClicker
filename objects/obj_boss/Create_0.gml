/// @description Insert description here
// You can write your code in this editor

sprite = sprite_index;
// Inherit the parent event
event_inherited();
sprite_index = sprite;
timer = 10+5*global.areaNum;
cTimer = timer;
boss = true;
//var levelV = (global.areaNum * (array_length_1d(global.area))) + array_length_1d(global.area) - 2;
//maxHealth = (round((30)*power(1.08,levelV)))*3;
maxHealth = maxHealth*3;
hp = maxHealth;
//goldValue = (30*power(1.07,levelV))*5;
goldValue = goldValue*5;
image_xscale = 1.5;
image_yscale = 1.5;
var Gtext = instance_create_depth(room_width/2,250,-800,obj_disappearingText);
Gtext.text = string("A boss appeared: " + name);
Gtext.colour = c_black;