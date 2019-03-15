cost = round(base*(power(multi,global.pCritChanceLevel)));
if (cost <= global.wood){
	global.wood = global.wood - cost;
	//global.wood = global.wood - cost;
	global.pCritChanceLevel += 1;
	//cost = global.pDamageLevel * global.pDamageLevel * 5;
	cost = round(base*(power(1.11,global.pCritChanceLevel)));
}