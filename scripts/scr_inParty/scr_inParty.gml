var ally = argument0;

for(var i=0; i<global.partySize; i+=1){
	if(ally == global.party[i] and ally != noone){
		return i;
	}
}
return -1;