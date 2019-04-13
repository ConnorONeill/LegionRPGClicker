/// @description 

// Inherit the parent event

if(active and room == rm_battle and scr_inParty(id) != -1 and global.ready){
	alarm[3] = duration*room_speed;
	var weaken = 1.5 + (.1*level);
	event_inherited();
	var dText = instance_create_depth(x, y-100, global.enemy.depth-10, obj_disappearingText);
	dText.text = "Weakening Blast";
	dText.font = fnt_brian18;
	dText.ySpd = 2;
	global.enemy.weaken = weaken;
	active = false;
	global.partyCd[scr_inParty(id)] = room_speed*cd;
	global.partyMaxCd[scr_inParty(id)] = room_speed*cd;
	selfCd = room_speed*cd;
	maxCd = room_speed*cd
	abActive = true;
}