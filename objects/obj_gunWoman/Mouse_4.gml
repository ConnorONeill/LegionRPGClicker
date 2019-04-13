/// @description 

if(active and room == rm_battle and scr_inParty(id) != -1 and global.ready){
	duration = (3*(level+1));
	alarm[4] = room_speed/3;
	alarm[3] = duration*room_speed;
	global.enemy.hp -= damage;
	event_inherited();
	var dText = instance_create_depth(x, y-100, global.enemy.depth-10, obj_disappearingText);
	dText.text = "Shoot! Shoot! Shoot!";
	dText.font = fnt_brian18;
	dText.ySpd = 2;
	active = false;
	global.partyCd[scr_inParty(id)] = room_speed*(cd+3*(level+1));
	selfCd = room_speed*(cd+3*(level+1));
	abActive = true;
	maxCd = cd*room_speed;
	global.partyMaxCd[scr_inParty(id)] = room_speed*cd;
}
