/// @description 

//1 = in party 2 = not unlocked 0 = unlocked not in party
if(ally != noone and !ally.purchased){
		status = allyStatus.notUnlocked;
		image_index = 2;	
}else if(scr_inParty(ally) != -1){
	status = allyStatus.inParty;
	image_index = 1;
}else{
	image_index = 0;
	status = allyStatus.outParty;
}