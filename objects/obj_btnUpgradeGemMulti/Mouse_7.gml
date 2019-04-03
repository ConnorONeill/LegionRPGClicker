/// @description 
if(global.areaNum > global.gemBaseLevel){
	cost = round(base*power(multi,global.woodBaseLevel));
	if(cost < base) cost = base; 
	if(global.gold >= cost){
		global.gold -= cost;
		//global.woodGen += baseV;
		global.woodBaseLevel += 1;
		cost = round(base*power(multi,global.gemBaseLevel));
	}
}