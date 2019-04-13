/// @description 

// Inherit the parent event
event_inherited();
var unlockLevel = ally.num + (global.allyCount * (ally.multi+1) * 2);

var multiUn;
multiUn = global.areaNum >= unlockLevel;
if(!active and multiUn and ally.purchased){
	active = true;
	cost = global.allyBaseCost * power(3,ally.num + global.allyCount * (ally.multi+1));
}
