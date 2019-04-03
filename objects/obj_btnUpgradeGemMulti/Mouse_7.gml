/// @description 
if(global.areaNum > global.gemBaseLevel){
	cost = round(base*power(multi,global.gemBaseLevel));
	if(cost < base) cost = base; 
	if(global.gold >= cost){
		global.gold -= cost;
		//global.woodGen += baseV;
		global.gemBaseLevel += 1;
		cost = round(base*power(multi,global.gemBaseLevel));
	}
}