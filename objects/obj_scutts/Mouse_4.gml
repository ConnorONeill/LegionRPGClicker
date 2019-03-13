/// @description Insert description here
// You can write your code in this editor
if(room == rm_battle){
	if(active == true){
		global.enemy.alarm[0] = room_speed*5;
		active = false;
		alarm[0] = cooldown*room_speed;
	}
}
