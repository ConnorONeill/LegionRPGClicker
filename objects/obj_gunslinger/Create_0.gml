// Inherit the parent event
event_inherited();
name = "Gunslinger";
cd = 20 - level;
if(cd < 10){
	cd = 10;
}
desc = "Instantly kill a non-boss enemy CD: " + string(cd) + " (20-level min 10)";
