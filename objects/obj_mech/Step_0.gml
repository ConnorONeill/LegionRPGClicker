/// @description 

// Inherit the parent event
event_inherited();
desc = "Increases click damage by x" + string(2+(.5*level)) + "(2+(.5*level)) for " + string(5+(3*level)) + "5+(3*level) seconds  Cooldown: " string(cd);
if(abActive and scr_inParty(id) == -1){
	abActive = false;	
}
