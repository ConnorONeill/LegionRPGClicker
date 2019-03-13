/// @description Insert description here
// You can write your code in this editor
if (cost <= global.wood && cost <= global.gems){
	global.gems = global.gems - cost;
	global.wood = global.wood - cost;
	global.ally[num].purchased = true;
	for(i=0; i<3;i+=1){
		if(global.party[i] == noone){
			global.party[i] = global.ally[num];
			i=3;
		}
		
	}
}