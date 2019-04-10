/// @description 
if(ally != noone and active){
	if(global.wood >= cost){
		global.wood -= cost;
		ally.level += 1;
		ally.cost = round(ally.baseCost*power(global.allyUpgradeMulti,ally.level+1));
		cost = ally.cost;
	}
}
