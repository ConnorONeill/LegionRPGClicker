/// @description Insert description here
// You can write your code in this editor
if(room == rm_battle){
	if(active == true){
		global.pDamage = global.pDamage * 2;
		alarm[2] = 10 * room_speed;
		active = false;
		alarm[0] = cooldown*room_speed;
		image_index = 1;
	}
}