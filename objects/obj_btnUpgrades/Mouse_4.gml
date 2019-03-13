/// @description Insert description here
// You can write your code in this editor
//room_goto(rm_upgrades);
if(global.menu.active == true){
	global.menu.ySpd = 0;
	global.menu.yDisReq = global.menu.sprite_height + btnHBot;//abs(room_height - global.menu.y); 
	global.menu.yDisTrav = 0;
	global.menu.yDir = sign(1);
	global.menu.active = false;
}else if(global.menu.active == false){
	global.menu.ySpd = 0;
	global.menu.yDisReq = global.menu.sprite_height + btnHBot; 
	global.menu.yDisTrav = 0;
	global.menu.yDir = sign(-1);
	global.menu.active = true;
}