/// @description 

// Inherit the parent event
event_inherited();
name = "Archer";
desc = "Instantly kills a basic enemy, Cooldown: "+string(cd);
if(level <= 15){
	cd = 20-level;
}else cd = 5;
