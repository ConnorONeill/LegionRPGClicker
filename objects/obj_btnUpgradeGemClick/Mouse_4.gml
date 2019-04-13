cost = round(base*power(multi,global.upgradeGemClick));
if(cost < base) cost = base; 
if(global.gold >= cost){
	global.gold -= cost;
	global.gemClick += baseV;
	global.upgradeGemClick += 1;
	cost = round(base*power(multi,global.upgradeGemClick));
}