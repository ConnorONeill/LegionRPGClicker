/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
cost = round(ally.baseCost*power(global.allyBaseMulti,ally.level+1));
event_inherited();
if(ally.unlocked and ally.purchased and !active and alarm[0] = -1){
	alarm[0] = 2;
}
