/// @description 
if(scr_multiScript(global.pDamageMultiLevel)){
	cost = round(base*power(multi,global.pDamageMultiLevel));
	if(cost < base) cost = base; 
	if(global.gems >= cost and global.wood >= cost){
		global.gems -= cost;
		global.wood -= cost;
		//global.woodGen += baseV;
		global.pDamageMultiLevel += 1;
		cost = round(base*power(multi,global.pDamageMultiLevel));
	}
}