/// @description 
if(ally != noone){
	if(!ally.purchased and ally.unlocked){
		if(global.wood and global.gems >= cost){
			global.wood -= cost;
			global.gems -= cost;
			ally.purchased = true;
			for(var i=0; i<global.partySize; i+=1){
				if(global.party[i] == noone){
					global.party[i] = ally;
					i = global.partySize;
				}
			}
		}
	}
}
			