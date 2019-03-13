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
if(room == rm_upgrades){
	global.ally[0].x = global.partyX;
	global.ally[0].y = global.partyY;
	global.ally[1].x = global.ally[0].x + global.ally[0].sprite_width/2 + global.ally[1].sprite_width/2 + 10;
	global.ally[1].y = global.partyY;
//	global.ally[2].x = global.ally[1].x + global.ally[1].sprite_width/2 + global.ally[2].sprite_width/2 + 10;
//	global.ally[2].y = global.partyY;
	
}