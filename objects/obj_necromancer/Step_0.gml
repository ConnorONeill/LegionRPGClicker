/// @description 

// Inherit the parent event
event_inherited();
desc = "Boosts the damage and gold generation of all allies by x" + string(1.5 + (.2*level)) + "(1.2 + (.3*level)) for " + string(10+(5*level)) +"(10+(5xlevel)) seconds, Cooldown: " + string(cd);
if(abActive and scr_inParty(id) == -1){
	abActive = false;	
}