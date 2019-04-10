/// @description 
damage = baseDamage * (level+1);
if(rm_battle and alarm[1] == -1){
	alarm[1] = room_speed;
	for(var i = 0; i < global.partySize; i += 1){
		if(global.party[i] != noone){
			alarm[1] = global.party[i].alarm[1];
		}
	}	
}
