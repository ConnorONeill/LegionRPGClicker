/// @description Insert description here
// You can write your code in this editor
if(room == rm_battle and global.ready and scr_inParty(id) != -1){
	if(active == true){
		event_inherited();
		//global.pDamage = global.pDamage * 2;
		//alarm[2] = 10 * room_speed;
		active = false;
		//alarm[0] = cooldown*room_speed;
		image_index = 1;
	}
}