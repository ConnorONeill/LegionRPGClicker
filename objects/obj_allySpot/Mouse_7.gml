/// @description 
//0 = unlocked not in party 1 = in party 2 = not unlocked 
if(status == allyStatus.inParty){
	global.party[scr_inParty(ally)] = noone;
}else if (status == allyStatus.outParty){
	if(scr_checkParty() != -1){
		global.party[scr_checkParty()] = ally;		
	}
}