/// @description 

// Inherit the parent event
event_inherited();
name = "Knight";
cd = 10;
desc = "Instantly does " + string(scr_damage(false)*(5+level)) + " (click damage*(5+level)) damage, Cooldown: " + string(cd);

