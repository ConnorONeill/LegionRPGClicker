/// @description 

// Inherit the parent event

if(active and room == rm_battle and scr_inParty(id) != -1 and !global.enemy.boss and global.ready){
	event_inherited();
	var dText = instance_create_depth(x, y-100, global.enemy.depth-10, obj_disappearingText);
	dText.text = "True Strike!";
	dText.font = fnt_brian18;
	dText.ySpd = 2;
	var dText = instance_create_depth(global.enemy.x, global.enemy.y, global.enemy.depth-10, obj_disappearingText);
	dText.text = string(global.enemy.hp)+"!!!";
	dText.colour = c_red;
	dText.font = fnt_brian24;
	active = false;
	global.partyCd[scr_inParty(id)] = room_speed*cd;
	global.enemy.hp = 0;
	selfCd = room_speed*cd;	
	maxCd = room_speed*cd;
	global.partyMaxCd[scr_inParty(id)] = room_speed*cd;
	
}

