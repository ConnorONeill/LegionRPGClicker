/// @description 

// Inherit the parent event
event_inherited();
desc = "Deals " + string(scr_damage(false)) + " damage 3 times a second for " + string(3*level+1) + " (3x(level+1) seconds, Cooldown: " + string(cd);
if(abActive and scr_inParty(id) == -1){
	abActive = false;	
}

