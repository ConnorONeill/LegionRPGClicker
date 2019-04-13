/// @description 
damage = baseDamage * (level+1);
if(selfCd > -1){
	selfCd -= 1;
}
if(scr_inParty(id) != -1){
	if(global.partyCd[scr_inParty(id)] == -1){
		if(selfCd == -1){
			active = true;
		}
	}
}else active = false;

if(rm_battle and alarm[1] == -1){
	alarm[1] = room_speed;
	for(var i = 0; i < global.partySize; i += 1){
		if(global.party[i] != noone){
			alarm[1] = global.party[i].alarm[1];
		}
	}	
}

if(scr_inParty(id)!= -1){
	x = global.partyX[scr_inParty(id)];
	y = global.partyY;
}
