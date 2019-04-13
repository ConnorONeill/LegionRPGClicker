/// @description 
if(active and room == rm_battle and scr_inParty(id) != -1 and global.ready){
	duration = 5+(3*level);
	alarm[3] = duration*room_speed;
	event_inherited();
	var dText = instance_create_depth(x, y-100, global.enemy.depth-10, obj_disappearingText);
	dText.text = "Mechanised Utopia!";
	dText.font = fnt_brian18;
	dText.ySpd = 2;
	startBoost = 2+(.5*level);
	global.multiplier = startBoost;
	active = false;
	var totalCd = cd + duration;
	global.partyCd[scr_inParty(id)] = room_speed*totalCd;
	selfCd = room_speed*totalCd;
	abActive = true;
	maxCd = cd*room_speed;
	global.partyMaxCd[scr_inParty(id)] = room_speed*cd;
}

