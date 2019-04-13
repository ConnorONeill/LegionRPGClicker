/// @description 

// Inherit the parent event
event_inherited();
if(level <= 15){
	cd = 20-level;
}else cd = 5;
desc = "Instantly kills a basic enemy, Cooldown: "+string(cd) + " (20-level min 5)";
