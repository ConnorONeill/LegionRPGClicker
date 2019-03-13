cost = round(base*power(1.07,global.upgradeGemClick));
if(cost < base) cost = base; 
if(global.gold >= cost){
	global.gold -= cost;
	global.gemClick += baseV;
	global.upgradeGemClick += 1;
	cost = round(base*power(1.09,global.upgradeGemClick));
}