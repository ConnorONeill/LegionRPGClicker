/// @description Insert description here
// You can write your code in this editor
if(room == rm_battle){
	if(global.enemy != noone){
		global.enemy.hp = global.enemy.hp - damage;
		alarm[1] = room_speed;
	}
}