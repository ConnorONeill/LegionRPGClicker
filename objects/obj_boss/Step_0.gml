if (hp <= 0){
	instance_destroy(global.enemy);
	//global.level = array_length_1d(global.area) - 1;
	global.level += 2;
	global.woodClick += 1;
	global.gemClick += 1;
	global.enemy = noone;
	global.bossReady = false;	
	global.gold += round(goldValue);
	var Gtext = instance_create_depth(mouse_x,mouse_y,-1000,obj_disappearingText);
	Gtext.text = string("Gold: +" + string(round(goldValue)));
	Gtext.colour = c_yellow;
}