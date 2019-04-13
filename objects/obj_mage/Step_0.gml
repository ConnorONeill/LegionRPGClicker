/// @description 

// Inherit the parent event
event_inherited();
if(global.enemy == noone and abActive){
	sprite_index = sprite;
	depth += 1;
	abActive = false;
}
desc = "Weakens the current enemy to take x" + string(1.5 + (.1*level)) + " (1.5+ .1xlevel) damage, Cooldown: " + string(cd);