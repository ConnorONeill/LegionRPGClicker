/// @description 

// Inherit the parent event
event_inherited();
name = "Mage";
desc = "Weakens the current enemy to take x" + string(1.5 + (.1*level)) + " (1.5+ .1xlevel) damage, Cooldown: " + string(cd);
abActive = false;
cd = 20;
duration = 10;