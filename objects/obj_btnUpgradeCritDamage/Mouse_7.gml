/// @description 
cost = round(base*(power(multi,global.pCritDamageLevel)));
if (cost <= global.gems){
	global.gems = global.gems - cost;
	//global.wood = global.wood - cost;
	global.pCritDamageLevel += 1;
	//cost = global.pDamageLevel * global.pDamageLevel * 5;
	cost = round(base*(power(1.11,global.pCritDamageLevel)));
}