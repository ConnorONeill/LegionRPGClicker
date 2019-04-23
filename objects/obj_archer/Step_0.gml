/// @description 

// Inherit the parent event
event_inherited();
if(level <= 10){
	cd = 30-level;
}else cd = 20;
desc = "Instantly kills a basic enemy, Cooldown: "+string(cd) + " (30-level min 20)";
