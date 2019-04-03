/// @description Insert description here
// You can write your code in this editor

if(room == rm_battle){
	if(global.enemy == noone){
		//global.enemy = instance_create_depth(room_width/2+10,room_height/2, 10, plains[global.level-1]);	
	}else{
		//instance_destroy(global.enemy);
		global.enemy = noone;
	}
}