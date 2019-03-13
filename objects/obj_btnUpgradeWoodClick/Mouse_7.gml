cost = round(base*power(multi,global.upgradeWoodClick));
if(cost < base) cost = base; 
if(global.gold >= cost){
	global.gold -= cost;
	global.woodClick += baseV;
	global.upgradeWoodClick += 1;
	cost = round(base*power(multi,global.upgradeWoodClick));
}