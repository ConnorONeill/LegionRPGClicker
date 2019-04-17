/// @description 

// Inherit the parent event
event_inherited();
var unlockLevel = ally.num + (global.allyCount*2 + (global.allyCount * (ally.multi)));

var multiUn;
multiUn = global.areaNum >= unlockLevel;
if(!active and multiUn and ally.purchased){
	active = true;
	cost = global.ally[global.allyCount-1].baseCost * power(1.15,ally.num + (global.allyCount * (ally.multi+1)))
}
