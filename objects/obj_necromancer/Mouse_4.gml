/// @description 

// Inherit the parent event
if(active and room == rm_battle and scr_inParty(id) != -1 and global.ready){
	duration = 10+(5*level);
	alarm[3] = duration*room_speed;
	event_inherited();
	var dText = instance_create_depth(x, y-100, global.enemy.depth-10, obj_disappearingText);
	dText.text = "Ancient Strength!";
	dText.font = fnt_brian18;
	dText.ySpd = 2;
	startBoost = 1.5+(.2*level);
	global.allyMultiplier = startBoost;
	with(obj_ally){
		image_xscale = 1.2;
		image_yscale = 1.2;
	}
	active = false;
	global.partyCd[scr_inParty(id)] = room_speed*((cd+10)+(5*level));
	selfCd = room_speed*((cd+10)+(5*level));
	abActive = true;
	maxCd = room_speed*cd;
	global.partyMaxCd[scr_inParty(id)] = room_speed*cd;
}
