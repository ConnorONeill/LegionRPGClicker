cost = round(base*power(1.09,global.upgradeWoodGen));
if(cost < base) cost = base; 
if(global.gold >= cost){
	global.gold -= cost;
	global.woodGen += baseV;
	global.upgradeWoodGen += 1;
	cost = round(base*power(1.09,global.upgradeWoodGen));
}