for(var i=0; i<global.partySize; i+=1){
	if(global.party[i] == noone){
	return i;	
	}
}
return -1;