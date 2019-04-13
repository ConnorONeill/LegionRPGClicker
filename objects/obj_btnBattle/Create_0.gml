/// @description Insert description here
// You can write your code in this editor
name = "Battle";
bRoom = rm_battle;
if(global.menu.active == true){
	global.menu.ySpd = 0;
	global.menu.yDisReq = global.menu.sprite_height + btnHBot;//abs(room_height - global.menu.y); 
	global.menu.yDisTrav = 0;
	global.menu.yDir = sign(1);
	global.menu.active = false;
}
event_inherited();