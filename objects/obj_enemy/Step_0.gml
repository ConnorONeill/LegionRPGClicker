/// @description Insert description here
// You can write your code in this editor
if (hp <= 0){
	global.level += 1;
	global.woodClick += 1;
	global.gemClick += 1;
	global.gold += round(goldValue);
	var Gtext = instance_create_depth(mouse_x + 50,mouse_y + 50,-1000,obj_disappearingText);
	Gtext.text = string("+" + string(round(goldValue)));
	Gtext.colour = c_yellow;
	Gtext.sprite = spr_gold;
	Gtext.sprWid = 32;
	instance_destroy(global.enemy);
	global.enemy = noone;
}