/// @description Insert description here
// You can write your code in this editor
if(room == rm_battle and scr_inParty(id) != -1){
	if(global.enemy != noone){
		damage = ceil((baseDamage * (level+1))*global.allyMultiplier);
		global.enemy.hp = global.enemy.hp - damage;
		alarm[1] = room_speed;
	}
}
