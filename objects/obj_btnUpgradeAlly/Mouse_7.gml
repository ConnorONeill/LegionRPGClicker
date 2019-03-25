/// @description Insert description here
// You can write your code in this editor
if(ally != noone and active){
	if(global.wood >= cost){
		global.wood -= cost;
		ally.level += 1;
		cost = round(ally.baseCost*power(global.allyBaseMulti,ally.level+1));
	}
}
