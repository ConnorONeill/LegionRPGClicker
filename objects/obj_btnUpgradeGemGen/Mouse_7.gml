cost = round(base*power(multi,global.upgradeGemGen));
if(cost < base) cost = base; 
if(global.gold >= cost){
	global.gold -= cost;
	global.gemGen += baseV;
	global.upgradeGemGen += 1;
	cost = round(base*power(multi,global.upgradeGemGen));
}