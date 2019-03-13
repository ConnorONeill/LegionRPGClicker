/// @description Insert description here
// You can write your code in this editor
if (hp <= 0){
	global.level += 1;
	global.woodClick += 1;
	global.gemClick += 1;
	global.gold += round(goldValue);
	var Gtext = instance_create_depth(mouse_x,mouse_y,-1000,obj_disappearingText);
	Gtext.text = string("Gold: +" + string(round(goldValue)));
	Gtext.colour = c_yellow;
	instance_destroy(global.enemy);
	global.enemy = noone;
}