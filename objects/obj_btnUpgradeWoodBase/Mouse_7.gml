cost = round(base*power(multi,global.upgradeWoodGen));
if(cost < base) cost = base; 
if(global.gold >= cost){
	global.gold -= cost;
	//global.woodGen += baseV;
	global.woodBaseLevel += 1;
	cost = round(base*power(multi,global.upgradeWoodGen));
}