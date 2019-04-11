/// @description 
// Inherit the parent event
if(active and room == rm_battle and scr_inParty(id) != -1){
	event_inherited();
	var dText = instance_create_depth(x, y-100, global.enemy.depth-10, obj_disappearingText);
	dText.text = "Giant Slash";
	dText.font = fnt_brian24;
	dText.ySpd = 2;
	global.enemy.hp -= damage*(5+level);
	var dText = instance_create_depth(global.enemy.x, global.enemy.y, global.enemy.depth-10, obj_disappearingText);
	dText.text = string(damage*(5+level))+"!!!";
	dText.colour = c_red;
	dText.font = fnt_brian24;
	active = false;
	global.partyCd[scr_inParty(id)] = room_speed*cd;
}	

